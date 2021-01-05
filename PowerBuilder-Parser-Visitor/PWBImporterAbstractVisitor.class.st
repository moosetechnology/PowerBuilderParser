Class {
	#name : #PWBImporterAbstractVisitor,
	#superclass : #PWBASTAbstractVisitor,
	#traits : 'SRSolverUserVisitor',
	#classTraits : 'SRSolverUserVisitor classTrait',
	#instVars : [
		'model',
		'file',
		'importingContext',
		'preprocessingMap'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #'as yet unclassified' }
PWBImporterAbstractVisitor class >> mappingFileExtensionFamixClass [
	^{('srd' -> FamixPWBDataWindow).
	('sru' -> FamixPWBUserObject).
	('srw' -> FamixPWBWindow).
	('srs' -> FamixPWBStructure).
	('srf' -> FamixPWBGlobalFunction).
	('srm' -> FamixPWBMenuObject).
	('sra' -> FamixPWBApplication).
	('srq' -> FamixPWBQuery)}
]

{ #category : #helpers }
PWBImporterAbstractVisitor >> auxiliaryVisitor: aPWBVisitorClass visit: aNode [
	^aPWBVisitorClass new
		solver: self solver ;
		"importingContext: self importingContext ;"
		model: self model ;
		"preprocessingMap: self preprocessingMap ;"
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
	self flag: #TODOSourceAnchor.
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

{ #category : #'entities creation' }
PWBImporterAbstractVisitor >> createPWBParameters: aCollection [
	^aCollection
		collect: [ :arg | 
			| param |
			param := (model
				ensureIRForFamixClass: FamixPWBParameter
				named: (self visit: arg)
				owner:  self currentEntity)
				declaredType: (self visit: arg type).
			self flag: #TODOSourceAnchor.
			"parameterOption: (self visit: arg argumentOption);
				sourceAnchor:
					(FamixPWBIndexedFileAnchor new
						mooseModel: self model;
						startPos: (self unpreprocessedPosition: arg startPosition);
						fileName: (self unpreprocessedFile relativeTo: self model rootFolder) pathString;
						endPos: (self unpreprocessedPosition: arg stopPosition);
						yourself)".
			self flag:
				'param parameterType isResolvable
				ifTrue: [ param parameterType addTypedVariable: param ]'
		]
]

{ #category : #'entities creation' }
PWBImporterAbstractVisitor >> createResolvableIdentifier: aPWBASTExpressionAction [
	^self resolvable: (self createSRIdentifier: aPWBASTExpressionAction)
]

{ #category : #'entities creation' }
PWBImporterAbstractVisitor >> createSRIdentifier: aPWBASTExpressionAction [
	| sRIdentifierWithNode |
	sRIdentifierWithNode := SRTypeIdentifierWithNode
		name: (self visit: aPWBASTExpressionAction action)
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
	self flag: 'Put the created entity in a stub module?'.
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

{ #category : #helpers }
PWBImporterAbstractVisitor >> declaredType: typeIdentifier forIR: irTypedEntity [
	| resolvable |
	resolvable := self
		resolvable:
			(SRTypeIdentifierWithNode
				name: typeIdentifier identifier
				expectedKind: self defaultFamixTypeKinds
				node: typeIdentifier).
	resolvable
		foundAction: [ :identifier :currentEntity |
			irTypedEntity declaredType: identifier entity ];
		notFoundReplacementEntity: [ :identifier :currentEntity | 
			(model irStub: PWBIRType named: typeIdentifier identifier)
				expectedFamixKinds: self defaultFamixTypeKinds;
				yourself ].
	self resolve: resolvable
]

{ #category : #'famix kind' }
PWBImporterAbstractVisitor >> defaultFamixTypeKinds [
	^PWBIRType mappingFamixClasses
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

{ #category : #helpers }
PWBImporterAbstractVisitor >> famixClassForFileExtension: anExtension [
	^ self class mappingFileExtensionFamixClass
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
	
	self pushIRModelAsScope: model
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
	model := PWBIRModel new
]

{ #category : #helpers }
PWBImporterAbstractVisitor >> majorObjectFamixClasses [
	^ self class mappingFileExtensionFamixClass
	collect: [ :assoc | assoc value ]
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
