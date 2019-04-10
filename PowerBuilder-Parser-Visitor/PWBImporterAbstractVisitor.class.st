Class {
	#name : #PWBImporterAbstractVisitor,
	#superclass : #PWBASTAbstractVisitor,
	#traits : 'SRSolverUserVisitor',
	#classTraits : 'SRSolverUserVisitor classTrait',
	#instVars : [
		'model'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #'entities creation' }
PWBImporterAbstractVisitor >> create: aClass [
	| entity |
	entity := aClass new
		mooseModel: self model;
		yourself.
	[ entity cyclomaticComplexity: 1 ]
		on: MessageNotUnderstood
		do:
			[ "By default we set the cyclomatic complexity at 1; it will be increased by each visit of a control structure" ].
	^ entity
]

{ #category : #'entities creation' }
PWBImporterAbstractVisitor >> initialize [
	super initialize.
	self initialiseSolver
]

{ #category : #accessing }
PWBImporterAbstractVisitor >> model [
	^ model
]

{ #category : #accessing }
PWBImporterAbstractVisitor >> model: anObject [
	model := anObject
]

{ #category : #visiting }
PWBImporterAbstractVisitor >> visitPWBASTVariable: aPWBASTVariable [
	self visit: aPWBASTVariable arrayWithSize.
	^ SRIdentifierWithNode identifier: (self visit: aPWBASTVariable identifier) node: aPWBASTVariable identifier
]
