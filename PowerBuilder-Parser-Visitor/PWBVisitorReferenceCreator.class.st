Class {
	#name : #PWBVisitorReferenceCreator,
	#superclass : #PWBASTAbstractVisitor,
	#traits : 'SRSolverUserVisitor',
	#classTraits : 'SRSolverUserVisitor classTrait',
	#instVars : [
		'model'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #accessing }
PWBVisitorReferenceCreator >> initialize [
	super initialize.
	self initialiseSolver
]

{ #category : #accessing }
PWBVisitorReferenceCreator >> model [
	^ model
]

{ #category : #accessing }
PWBVisitorReferenceCreator >> model: anObject [
	model := anObject
]

{ #category : #scope }
PWBVisitorReferenceCreator >> visitPWBASTFile: aPWBASTFile [
	self
		useCurrentEntity:
			((self model allWithType: FamixPWBDataWindow)
				, (self model allWithType: FamixPWBUserObject)
				entityNamed: aPWBASTFile fileName)
		during: [ super visitPWBASTFile: aPWBASTFile ]
]

{ #category : #scope }
PWBVisitorReferenceCreator >> visitPWBASTMethodInvocation: aPWBASTMethodInvocation [
	| methodName |
	methodName := self visit: aPWBASTMethodInvocation uncheckedIdentifier.
	
	model allMethods
		entityNamed: methodName
		ifAbsent: [ FamixPWBMethod new
				name: methodName;
				mooseModel: model;
				yourself ].
	self visit: aPWBASTMethodInvocation functionArguments
]
