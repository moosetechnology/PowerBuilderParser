Class {
	#name : #PWBAbtractViolationDetectVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'parser',
		'visitor'
	],
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBAbtractViolationDetectVisitorTest >> setUp [
	| file |
	visitor := PWBAbstractViolationDetectVisitor new.
	visitor preprocessingMap: Dictionary new.
	parser := PWBCommonParser new.
	file := Mock named: 'file'.
	file stub fullName willReturn: ''.
	visitor file: file
]
