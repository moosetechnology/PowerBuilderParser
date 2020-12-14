"
A visitor for ""FAST"" model (more detailed) on functions.
"
Class {
	#name : #PWBFASTVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor',
		'result',
		'model'
	],
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBFASTVisitorTest >> setUp [
	visitor := PWBFASTVisitor new
			model: (self setupModel) ;
			yourself.

]

{ #category : #running }
PWBFASTVisitorTest >> setupModel [
	model := FamixPWBModel new.
	FamixPWBUserObject new
		name: 'test_uo' ;
		mooseModel: model.
	^ model
]
