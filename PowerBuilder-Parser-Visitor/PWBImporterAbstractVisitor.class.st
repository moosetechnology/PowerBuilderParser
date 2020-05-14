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
PWBImporterAbstractVisitor >> createAssociation: aClass from: anASTNode [
	| created |
	"self haltIf: aClass = FamixPWBInvocation."
	created := self createAssociation: aClass.
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

{ #category : #helpers }
PWBImporterAbstractVisitor >> createStub: aClass [
	| entity |
	self flag: #TODO.	"Put the created entity in a stub module"
	entity := aClass new
		mooseModel: self model;
		yourself.
	^ entity
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

{ #category : #'entities creation' }
PWBImporterAbstractVisitor >> initialize [
	super initialize.
	self initialiseSolver
]

{ #category : #helpers }
PWBImporterAbstractVisitor >> majorEntityClassForExtension: anExtension [
	^ {('srd' -> FamixPWBDataWindow).
	('sru' -> FamixPWBUserObject).
	('srw' -> FamixPWBWindow).
	('srs' -> FamixPWBStructure).
	('srf' -> FamixPWBGlobalFunction).
	('srm' -> FamixPWBMenuObject).
	('sra' -> FamixPWBApplication).
	('srq' -> FamixPWBQuery)} asDictionary at: anExtension
]

{ #category : #accessing }
PWBImporterAbstractVisitor >> model [
	^ model
]

{ #category : #accessing }
PWBImporterAbstractVisitor >> model: anObject [
	model := anObject.
	self pushAsScopeAll: FamixPWBFunction ofModel: model.
	self pushAsScopeAll: FamixPWBEvent ofModel: model.
	self pushAsScopeAll: FamixPWBSubRoutine ofModel: model.
	self pushAsScopeAll: FamixPWBUserObject ofModel: model
]

{ #category : #'as yet unclassified' }
PWBImporterAbstractVisitor >> preprocessedFile: aFile [
	self
		file:
			(aFile pathString
				copyReplaceAll: aFile basename
				with: 'cleaned/' , aFile basename) asFileReference
]

{ #category : #accessing }
PWBImporterAbstractVisitor >> preprocessingMap: aCollection [ 
	preprocessingMap := aCollection 
]

{ #category : #'as yet unclassified' }
PWBImporterAbstractVisitor >> unpreprocessedFile [
	^ (self file fullName copyReplaceAll: '/cleaned' with: '')
		asFileReference
]

{ #category : #'as yet unclassified' }
PWBImporterAbstractVisitor >> unpreprocessedPosition: anInteger [
	^ preprocessingMap
		at: file fullName
		ifPresent: [ :found | anInteger + found ]
		ifAbsent: [ anInteger ]
]

{ #category : #'entities creation' }
PWBImporterAbstractVisitor >> visitPWBASTEventType: aPWBASTEventType [
	^ self visit: aPWBASTEventType eventType
]

{ #category : #visiting }
PWBImporterAbstractVisitor >> visitPWBASTFunctionDefinition: aPWBASTFunctionDefinition [
	(self visit: aPWBASTFunctionDefinition functionSignature)
		ifNotNil: [ :argumentsArray | 
			argumentsArray
				do: [ :arg | 
					self currentEntity
						createValueHolderNamed: arg
						withType: FamixPWBParameter ] ].
	self visit: aPWBASTFunctionDefinition statements
]

{ #category : #visiting }
PWBImporterAbstractVisitor >> visitPWBASTSpecialVariable: aPWBASTSpecialVariable [
	^ self visit: aPWBASTSpecialVariable this
]

{ #category : #visiting }
PWBImporterAbstractVisitor >> visitPWBASTThis: anPWBASTThis [
	^ self resolvable: 
		 (SRThisWithNode
		node: anPWBASTThis
		validationAsTypeBlock: [ :entity | entity class inheritsFrom: FamixPWBmajorObject ])
]

{ #category : #visiting }
PWBImporterAbstractVisitor >> visitPWBASTVariable: aPWBASTVariable [
	self visit: aPWBASTVariable arrayDefinition.
	^ self
		resolvable:
			(SRIdentifierWithNode
				identifier: (self visit: aPWBASTVariable identifier)
				expectedKind:
					{FamixPWBVariable.
					FamixPWBAttribute.
					FamixPWBParameter.
					FamixPWBGlobalVariable.
					FamixPWBSharedVariable.
					FamixPWBInstanceVariable.
					FamixPWBLocalVariable}
				node: aPWBASTVariable identifier)
]
