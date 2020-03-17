Class {
	#name : #PWBASTVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor'
	],
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBASTVisitorTest >> setUp [
visitor := PWBEntityCreatorFutureReferenceSolverVisitor new.
]
