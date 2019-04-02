Class {
	#name : #PWBVisitorEntityCreator,
	#superclass : #PWBASTAbstractVisitor,
	#traits : 'SRSolverUserVisitor',
	#classTraits : 'SRSolverUserVisitor classTrait',
	#instVars : [
		'model'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #'entities creation' }
PWBVisitorEntityCreator >> ensureEntityWithType: aType named: aName [
	^ (model allWithType: aType)
		entityNamed: aName
		ifAbsent: [ aType new
				name: aName;
				mooseModel: model;
				yourself ]
]

{ #category : #accessing }
PWBVisitorEntityCreator >> initialize [
	super initialize.
	self initialiseSolver
]

{ #category : #accessing }
PWBVisitorEntityCreator >> model [
	^ model
]

{ #category : #accessing }
PWBVisitorEntityCreator >> model: anObject [
	model := anObject
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTBasicType: anPWBASTBasicType [
	^ self
		ensureEntityWithType: FamixPWBBasicType
		named: anPWBASTBasicType basicType
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTCustomType: aPWBASTCustomType [
	^ self
		ensureEntityWithType: FamixPWBCustomType
		named: (self visit: aPWBASTCustomType identifier)
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTDataWindowFile: aPWBASTDataWindowFile [
	^ self
		useCurrentEntity: (self create: FamixPWBDataWindow from: aPWBASTDataWindowFile)
		during: [ super visitPWBASTDataWindowFile: aPWBASTDataWindowFile ]
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTFile: aPWBASTFile [
	(self visit: aPWBASTFile content) name: aPWBASTFile fileName 
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTFunctionDeclaration: aPWBASTFunctionDeclaration [
	self
		useCurrentEntity: PWBNullEntityObject new
		during: [ super visitPWBASTFunctionDeclaration: aPWBASTFunctionDeclaration ]
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTFunctionDefinition: aPWBASTFunctionDefinition [
	self
		useCurrentEntity: (self create: FamixPWBFunction from: aPWBASTFunctionDefinition)
		during: [ super visitPWBASTFunctionDefinition: aPWBASTFunctionDefinition ]
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTFunctionSignature: aPWBASTFunctionSignature [
	self visit: aPWBASTFunctionSignature accessModifier.
	self visit: aPWBASTFunctionSignature type.
	self currentEntity
		name: (self visit: aPWBASTFunctionSignature identifier).
	self visit: aPWBASTFunctionSignature arguments
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTGraphicComponent: aPWBASTGraphicComponent [
	self
		useCurrentEntity: (self create: FamixPWBGraphicComponent from: aPWBASTGraphicComponent)
		during: [ super visitPWBASTGraphicComponent: aPWBASTGraphicComponent ]
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTSubroutineDeclaration: aPWBASTSubroutineDeclaration [
	self
		useCurrentEntity: PWBNullEntityObject new
		during: [ super visitPWBASTSubroutineDeclaration: aPWBASTSubroutineDeclaration ]
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTSubroutineDefinition: aPWBASTSubroutineDefinition [
	self
		useCurrentEntity: (self create: FamixPWBSubRoutine from: aPWBASTSubroutineDefinition)
		during: [ super visitPWBASTSubroutineDefinition: aPWBASTSubroutineDefinition ]
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTSubroutineSignature: aPWBASTSubroutineSignature [
	<generated>
	self visit: aPWBASTSubroutineSignature accessModifier.
	self currentEntity
		name: (self visit: aPWBASTSubroutineSignature identifier).
	self visit: aPWBASTSubroutineSignature arguments
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTTriggerDefinition: aPWBASTTriggerDefinition [
	| trigger |
	trigger := self
		create: FamixPWBTrigger
		from: aPWBASTTriggerDefinition.
	trigger name: (self visit: aPWBASTTriggerDefinition identifier).
	self visit: aPWBASTTriggerDefinition eventType.
	self
		useCurrentEntity: trigger
		during: [ self visit: aPWBASTTriggerDefinition statements ]
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTType: aPWBASTType [
	^ self visit: aPWBASTType type
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTUserObjectFile: aPWBASTUserObjectFile [
	^ self
		useCurrentEntity: (self create: FamixPWBUserObject from: aPWBASTUserObjectFile)
		during: [ super visitPWBASTUserObjectFile: aPWBASTUserObjectFile ]
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTVariable: aPWBASTVariable [
	self visit: aPWBASTVariable arrayWithSize.
	^ SRIdentifierWithNode identifier: (self visit: aPWBASTVariable identifier) node: aPWBASTVariable identifier
]