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
PWBVisitorReferenceCreator >> visitPWBASTAccess: aPWBASTAccess [
	| identifiers |
	self visit: aPWBASTAccess arrayPosition.
	self visitAll: aPWBASTAccess attributeAccesses.
	identifiers := (self visit: aPWBASTAccess variable).
	self currentEntity
		createAccessTo:
			([ self resolve: identifiers. identifiers entity]
				on: SRReferenciesNotFound
				do: [ :notFound | 
					self currentEntity
						createStubValueHolderNamed: notFound identifiers representationString ])
		writing: false
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
PWBVisitorReferenceCreator >> visitPWBASTFunctionDefinition: aPWBASTFunctionDefinition [
	self
		useCurrentEntity: (self visit: aPWBASTFunctionDefinition functionSignature)
		during: [ self visit: aPWBASTFunctionDefinition statements ]
]

{ #category : #scope }
PWBVisitorReferenceCreator >> visitPWBASTFunctionSignature: aPWBASTFunctionSignature [
	self visit: aPWBASTFunctionSignature accessModifier.
	self visit: aPWBASTFunctionSignature type.
	self visit: aPWBASTFunctionSignature arguments.
	^ (self model allWithType: FamixPWBFunction)
		entityNamed: (self visit: aPWBASTFunctionSignature identifier)
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

{ #category : #scope }
PWBVisitorReferenceCreator >> visitPWBASTSubroutineDefinition: aPWBASTSubroutineDefinition [
	self
		useCurrentEntity: (self visit: aPWBASTSubroutineDefinition subroutineSignature)
		during: [ self visit: aPWBASTSubroutineDefinition statements ]
]

{ #category : #scope }
PWBVisitorReferenceCreator >> visitPWBASTSubroutineSignature: aPWBASTSubroutineSignature [
	self visit: aPWBASTSubroutineSignature accessModifier.
	self visit: aPWBASTSubroutineSignature arguments.
	^ (self model allWithType: FamixPWBSubRoutine)
		entityNamed: (self visit: aPWBASTSubroutineSignature identifier)
]

{ #category : #scope }
PWBVisitorReferenceCreator >> visitPWBASTVariable: aPWBASTVariable [
	self visit: aPWBASTVariable arrayWithSize.
	^ SRIdentifierWithNode identifier: (self visit: aPWBASTVariable identifier) node: aPWBASTVariable identifier
]
