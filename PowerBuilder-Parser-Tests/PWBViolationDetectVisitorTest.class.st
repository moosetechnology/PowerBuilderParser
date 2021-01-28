Class {
	#name : #PWBViolationDetectVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'parser',
		'visitor'
	],
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBViolationDetectVisitorTest >> setUp [
	| file |
	visitor := PWBAbstractViolationDetectVisitor new.
	visitor preprocessingMap: Dictionary new.
	parser := PWBCommonParser new.
	file := Mock named: 'file'.
	file stub fullName willReturn: ''.
	visitor file: file
]

{ #category : #tests }
PWBViolationDetectVisitorTest >> testVisitViolationNumber [
	| ast |
	ast := parser number parse: '999999'.
	self assert: (visitor visit: ast) violations size equals: 1
]

{ #category : #tests }
PWBViolationDetectVisitorTest >> testVisitViolationNumberInFunction [
	| ast violations |
	ast := parser functionDefinition
		parse:
			'public  function integer myfunc();
	999999
	end function'.
	violations := (visitor visit: ast) violations.
	self assert: violations size equals: 1.
	self assert: violations anyOne behaviorName equals: 'myfunc'.
	
]

{ #category : #tests }
PWBViolationDetectVisitorTest >> testVisitViolationNumberInSubRoutine [
	| ast violations |
	ast := parser subroutineDefinition
		parse:
			'public  subroutine  mysub();
	999999
	end subroutine'.
	violations := (visitor visit: ast) violations.
	self assert: violations size equals: 1.
	self assert: violations anyOne behaviorName equals: 'mysub'
]

{ #category : #tests }
PWBViolationDetectVisitorTest >> testVisitWrongViolationNumber [
	| ast |
	ast := parser number parse: '1000000000000000000000000000000'.
	self assert: (visitor visit: ast) violations isEmpty
]
