Class {
	#name : #PWBVisitorEntityCreator,
	#superclass : #PWBImporterAbstractVisitor,
	#instVars : [
		'currentLibrary'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #accessing }
PWBVisitorEntityCreator >> currentLibrary: aFamixPWBLibrary [
	currentLibrary := aFamixPWBLibrary
]

{ #category : #'entities creation' }
PWBVisitorEntityCreator >> ensureEntityWithType: aType named: aName [
	^ (model allWithType: aType)
		entityNamed: aName
		ifAbsent: [ aType new
				name: aName;
				mooseModel: model;
				yourself ]
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTBasicType: anPWBASTBasicType [
	^ self
		ensureEntityWithType: FamixPWBBasicType
		named: anPWBASTBasicType basicType
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTCase: aPWBASTCase [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTCase: aPWBASTCase
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTCustomType: aPWBASTCustomType [
	^ self
		ensureEntityWithType: FamixPWBCustomType
		named: (self visit: aPWBASTCustomType identifier)
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTDoLoopUntil: aPWBASTDoLoopUntil [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoLoopUntil: aPWBASTDoLoopUntil
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTDoLoopWhile: aPWBASTDoLoopWhile [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoLoopWhile: aPWBASTDoLoopWhile
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTDoUntilLoop: aPWBASTDoUntilLoop [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoUntilLoop: aPWBASTDoUntilLoop
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTDoWhileLoop: aPWBASTDoWhileLoop [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTDoWhileLoop: aPWBASTDoWhileLoop
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTElseIf: aPWBASTElseIf [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTElseIf: aPWBASTElseIf
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTFile: aPWBASTFile [
	| majorEntity |
	majorEntity := self
		create: (self majorEntityClassForExtension: aPWBASTFile fileExtension)
		from: aPWBASTFile.
	majorEntity name: aPWBASTFile fileName.
	majorEntity library: currentLibrary.
	self
		useCurrentEntity: majorEntity
		during: [ super visitPWBASTFile: aPWBASTFile ]
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
PWBVisitorEntityCreator >> visitPWBASTIfMultiLine: aPWBASTIfMultiLine [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTIfMultiLine: aPWBASTIfMultiLine
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTIfSingleLine: aPWBASTIfSingleLine [
	self currentEntity increaseCyclomaticComplexity.
	^ super visitPWBASTIfSingleLine: aPWBASTIfSingleLine
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
	trigger name: (self visit: aPWBASTTriggerDefinition eventType).
	self visit: aPWBASTTriggerDefinition identifier.
	self
		useCurrentEntity: trigger
		during: [ self visit: aPWBASTTriggerDefinition statements ]
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTType: aPWBASTType [
	^ self visit: aPWBASTType type
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTVariableAssignation: aPWBASTVariableAssignation [
	self currentEntity
		createValueHolderNamed:
			(self visit: aPWBASTVariableAssignation variable) representationString.
	self visit: aPWBASTVariableAssignation assignation
]

{ #category : #visiting }
PWBVisitorEntityCreator >> visitPWBASTVariableDeclarations: aPWBASTVariableDeclarations [
	<generated>
	self flag: #TODO. "set type for declared variables"
	self visit: aPWBASTVariableDeclarations type.
	self visitAll: aPWBASTVariableDeclarations variableAssignations.
]
