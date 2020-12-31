Class {
	#name : #PWBImporterAbstractVisitor,
	#superclass : #PWBASTAbstractVisitor,
	#traits : 'SRSolverUserVisitor',
	#classTraits : 'SRSolverUserVisitor classTrait',
	#instVars : [
		'model',
		'file',
		'importingContext',
		'preprocessingMap',
		'irModel'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #helpers }
PWBImporterAbstractVisitor >> auxiliaryVisitor: aPWBVisitorClass visit: aNode [
	^aPWBVisitorClass new
		solver: self solver ;
		importingContext: self importingContext ;
		model: self model ;
		preprocessingMap: self preprocessingMap ;
		file: self file ;

		visit: aNode
]

{ #category : #'entities creation' }
PWBImporterAbstractVisitor >> create: aClass [
	| entity |
	(self importingContext shouldImport: aClass)
		ifFalse: [ ^ PWBAbsentFromImportingContextNullPatternObject new ].
	entity := aClass new
		mooseModel: self model;
		yourself.
	[ entity parentType: self currentEntity ]
		on: SRNoCurrentEntityAvailable
		do: [ "Here we handle the first level of created entities" ].
	[ entity cyclomaticComplexity: 1 ]
		on: MessageNotUnderstood
		do:
			[ "By default we set the cyclomatic complexity at 1; it will be increased by each visit of a control structure" ].
	^ entity
]

{ #category : #'entities creation' }
PWBImporterAbstractVisitor >> create: aClass from: anASTNode [
	| created |
	created := self create: aClass.
	(self importingContext shouldImport: FamixPWBIndexedFileAnchor)
		ifTrue: [ created
				sourceAnchor:
					(FamixPWBIndexedFileAnchor new
						mooseModel: self model;
						startPos: (self unpreprocessedPosition: anASTNode startPosition);
						fileName: (self unpreprocessedFile relativeTo: self model rootFolder) pathString;
						endPos: (self unpreprocessedPosition: anASTNode stopPosition);
						yourself) ].
	^ created
]

{ #category : #'entities creation' }
PWBImporterAbstractVisitor >> createAccessFrom: currentEntity to: sRIdentifierWithNode isWrite: aBoolean [
	^ (currentEntity
		createAccessTo: sRIdentifierWithNode entity
		writing: aBoolean)
		sourceAnchor:
			(FamixPWBIndexedFileAnchor new
				mooseModel: self model;
				startPos: (self unpreprocessedPosition: sRIdentifierWithNode startPosition);
				fileName: (self unpreprocessedFile relativeTo: self model rootFolder) pathString;
				endPos: (self unpreprocessedPosition: sRIdentifierWithNode stopPosition);
				yourself)
]

{ #category : #'entities creation' }
PWBImporterAbstractVisitor >> createEntity: aClass withAnchorFrom: anASTNode [
	| created |
	"self haltIf: aClass = FamixPWBInvocation."
	created := self createModelEntity: aClass.
	created
		sourceAnchor:
			(FamixPWBIndexedFileAnchor new
				mooseModel: self model;
				startPos: (self unpreprocessedPosition: anASTNode startPosition);
				fileName: (self unpreprocessedFile relativeTo: self model rootFolder) pathString;
				endPos: (self unpreprocessedPosition: anASTNode stopPosition);
				yourself).
	^ created
]

{ #category : #'ir entities' }
PWBImporterAbstractVisitor >> createIR: anIRKind named: aName owner: owner [
	^anIRKind new
		name: aName ;
		owner: owner ;
		yourself
]

{ #category : #'entities creation' }
PWBImporterAbstractVisitor >> createPWBParameters: aCollection [
	^ aCollection
		collect: [ :arg | 
			| param |
			param := (self currentEntity
				createValueHolderNamed: (self visit: arg)
				withType: FamixPWBParameter)
				parameterOption: (self visit: arg argumentOption);
				parameterType: (self visit: arg type);
				sourceAnchor:
					(FamixPWBIndexedFileAnchor new
						mooseModel: self model;
						startPos: (self unpreprocessedPosition: arg startPosition);
						fileName: (self unpreprocessedFile relativeTo: self model rootFolder) pathString;
						endPos: (self unpreprocessedPosition: arg stopPosition);
						yourself).
			param parameterType isResolvable
				ifTrue: [ param parameterType addTypedVariable: param ] ]
]

{ #category : #'entities creation' }
PWBImporterAbstractVisitor >> createResolvableIdentifier: aPWBASTExpressionAction [
	^self resolvable: (self createSRIdentifier: aPWBASTExpressionAction)
]

{ #category : #'entities creation' }
PWBImporterAbstractVisitor >> createSRIdentifier: aPWBASTExpressionAction [
	| sRIdentifierWithNode |
	sRIdentifierWithNode := SRTypeIdentifierWithNode
		identifier: (self visit: aPWBASTExpressionAction action)
		expectedKind:
			{FamixPWBVariable.
			FamixPWBAttribute.
			FamixPWBParameter.
			FamixPWBGlobalVariable.
			FamixPWBSharedVariable.
			FamixPWBInstanceVariable.
			FamixPWBLocalVariable}
		node: aPWBASTExpressionAction.
	aPWBASTExpressionAction expressionAction
		ifNotNil: [ :subExprAction | 
			subExprAction isAttributeAccess
				ifTrue:
					[ sRIdentifierWithNode next: (self createSRIdentifier: subExprAction) ]
				ifFalse: [ sRIdentifierWithNode next: (self visit: subExprAction) ] ].
	^ sRIdentifierWithNode
]

{ #category : #'entities creation' }
PWBImporterAbstractVisitor >> createStub: aClass [
	| entity |
	self flag: #TODO.	"Put the created entity in a stub module"
	entity := aClass new
		mooseModel: self model;
		yourself.
	^ entity
]

{ #category : #accessing }
PWBImporterAbstractVisitor >> currentEntityIfAny [
	^ [ self currentEntity ]
		on: SRNoCurrentEntityAvailable
		do: [ nil ]
]

{ #category : #'entities creation' }
PWBImporterAbstractVisitor >> ensureFamixEntity: aType named: aName [
	^ (model entityStorage selectAllWithType: aType)
		detect: [ :entity | entity name = aName ]
		ifNone: [ aType new
				name: aName;
				mooseModel: model;
				yourself ]
]

{ #category : #'ir entities' }
PWBImporterAbstractVisitor >> ensureIR: anIRKind named: aName owner: owner [
	| irEntities |
	irEntities := self getAllIR: anIRKind.
	^ irEntities
		detect: [ :irEntity | "ifOne: [ should test whether the owner is actually 'currentEntity' ? ]" irEntity name = aName ]
		ifNone: [ | irEntity |
			irEntity := self createIR: anIRKind named: aName owner: owner.
			irEntities add: irEntity.
			irModel at: anIRKind put: irEntities.
			irEntity ]
]

{ #category : #'ir entities' }
PWBImporterAbstractVisitor >> ensureIRForFamixClass: aFamixClass named: aName owner: owner [
	^self
		ensureIR: (PWBIRNamedEntity irClassForFamixClass: aFamixClass)
		named: aName
		owner: owner
]

{ #category : #helpers }
PWBImporterAbstractVisitor >> famixClassForFileExtension: anExtension [
	^ {('srd' -> FamixPWBDataWindow).
	('sru' -> FamixPWBUserObject).
	('srw' -> FamixPWBWindow).
	('srs' -> FamixPWBStructure).
	('srf' -> FamixPWBGlobalFunction).
	('srm' -> FamixPWBMenuObject).
	('sra' -> FamixPWBApplication).
	('srq' -> FamixPWBQuery)}
	detect: [ :assoc | assoc key = anExtension ]
	ifOne: [ :assoc | assoc value ]
]

{ #category : #accessing }
PWBImporterAbstractVisitor >> file [
	^ file
]

{ #category : #accessing }
PWBImporterAbstractVisitor >> file: anObject [
	file := anObject
]

{ #category : #'ir entities' }
PWBImporterAbstractVisitor >> getAllIR: anIRKind [
	^irModel at: anIRKind ifAbsent: [ OrderedCollection new ]
]

{ #category : #'ir entities' }
PWBImporterAbstractVisitor >> getAllIR: anIRKind named: aName [
	^(self getAllIR: anIRKind)
		select: [ :irEntity | irEntity name = aName ].
]

{ #category : #accessing }
PWBImporterAbstractVisitor >> importingContext [
	^ importingContext
]

{ #category : #accessing }
PWBImporterAbstractVisitor >> importingContext: anObject [
	importingContext := anObject
]

{ #category : #initialization }
PWBImporterAbstractVisitor >> initContextStackFromModel: aModel [
	self model: aModel.
	
	self pushIRModelAsScope: irModel
	"self pushAsScopeAll: FamixPWBFunction ofModel: aModel.
	self pushAsScopeAll: FamixPWBEvent ofModel: aModel.
	self pushAsScopeAll: FamixPWBSubRoutine ofModel: aModel.
	self pushAsScopeAll: FamixPWBUserObject ofModel: aModel.
	self pushAsScopeAll: FamixPWBBasicType ofModel: aModel"
]

{ #category : #initialization }
PWBImporterAbstractVisitor >> initialize [
	super initialize.
	self initialiseSolver.
	irModel := Dictionary new
]

{ #category : #accessing }
PWBImporterAbstractVisitor >> model [
	^ model
]

{ #category : #accessing }
PWBImporterAbstractVisitor >> model: anObject [
	model := anObject.
]

{ #category : #helpers }
PWBImporterAbstractVisitor >> preprocessedFile: aFile [
	self
		file:
			(aFile pathString
				copyReplaceAll: aFile basename
				with: 'cleaned/' , aFile basename) asFileReference
]

{ #category : #accessing }
PWBImporterAbstractVisitor >> preprocessingMap [
	^preprocessingMap
]

{ #category : #accessing }
PWBImporterAbstractVisitor >> preprocessingMap: aCollection [ 
	preprocessingMap := aCollection 
]

{ #category : #resolution }
PWBImporterAbstractVisitor >> resolve: identifiers [
	^ self solver resolve: identifiers
]

{ #category : #resolution }
PWBImporterAbstractVisitor >> resolveUnresolvedReferences [
	self solver resolveUnresolvedReferences
]

{ #category : #resolution }
PWBImporterAbstractVisitor >> resolveUnresolvedReferencesWithProgress [
	self solver resolveUnresolvedReferencesWithProgress
]

{ #category : #helpers }
PWBImporterAbstractVisitor >> unpreprocessedFile [
	| separator |
	separator := Smalltalk os filePathSeparator.
	^ (self file fullName copyReplaceAll: separator , 'cleaned' with: '')
		asFileReference
]

{ #category : #helpers }
PWBImporterAbstractVisitor >> unpreprocessedPosition: anInteger [
	^ preprocessingMap
		at: file fullName
		ifPresent: [ :found | anInteger + found ]
		ifAbsent: [ anInteger ]
]

{ #category : #scope }
PWBImporterAbstractVisitor >> useCurrentEntity: anEntity during: aBlock [
	self useScope: (SREntityScope currentEntity: anEntity) during: aBlock.
	"backward compatibility with old return"
	^anEntity
]

{ #category : #scope }
PWBImporterAbstractVisitor >> useEntityNamed: aName ofType: aType during: aBlock [
	^ self
		useCurrentEntity:
			((self model entityStorage selectAllWithType: aType)
				detect: [ :entity | entity name = aName ])
		during: aBlock
]

{ #category : #visiting }
PWBImporterAbstractVisitor >> visitPWBASTExpressionAction: aPWBASTExpressionAction [
	^ aPWBASTExpressionAction expressionAction
		ifNil: [ self visit: aPWBASTExpressionAction action ]
		ifNotNil: [ self visit: aPWBASTExpressionAction action.
			self visit: aPWBASTExpressionAction expressionAction ]
]
