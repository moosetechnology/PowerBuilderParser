Class {
	#name : #QueryLimitViolationDetectorTest,
	#superclass : #PWBAbtractViolationDetectVisitorTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #tests }
QueryLimitViolationDetectorTest >> testVisitViolationNumber [
	| ast |
	ast := parser number parse: '999999'.
	self assert: (visitor visit: ast) violations size equals: 1
]

{ #category : #tests }
QueryLimitViolationDetectorTest >> testVisitViolationNumberInFunction [
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
QueryLimitViolationDetectorTest >> testVisitViolationNumberInSubRoutine [
	| ast violations |
	self
		sourceExample:
			'public  subroutine  mysub();
	999999
	end subroutine'.
	ast := parser subroutineDefinition parse: file contents.
	violations := (visitor visit: ast) violations.
	self assert: violations size equals: 1.
	self assert: violations anyOne behaviorName equals: 'mysub'
]

{ #category : #tests }
QueryLimitViolationDetectorTest >> testVisitWrongViolationNumber [
	| ast |
	ast := parser number parse: '1000000000000000000000000000000'.
	self assert: (visitor visit: ast) violations isEmpty
]
