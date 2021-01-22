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
PWBImporterAbstractVisitor >> auxiliaryVisitor: aPWBAuxiliaryVisitorClass [
	^aPWBAuxiliaryVisitorClass newFrom: self
]

{ #category : #helpers }
PWBImporterAbstractVisitor >> auxiliaryVisitor: aPWBVisitorClass visit: aNode [
	^(self auxiliaryVisitor: aPWBVisitorClass)
		visit: aNode
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
			(SRIdentifierToIR
				name: typeIdentifier identifier
				expectedKind: PWBIRType defaultFamixClasses
				node: typeIdentifier).

	resolvable
		foundAction: [ :identifier :currentEntity |
			irTypedEntity declaredType: identifier entity ];
		ifNotFoundCreateStubInModel: self model.
	self resolve: resolvable
]

{ #category : #'famix kind' }
PWBImporterAbstractVisitor >> defaultFamixTypeKinds [
	^PWBIRType defaultFamixClasses
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
	
	self pushIRModelAsScope: self model

]

{ #category : #initialization }
PWBImporterAbstractVisitor >> initialize [
	super initialize.
	self initialiseSolver.
	model := PWBIRModel new
]

{ #category : #testing }
PWBImporterAbstractVisitor >> isMajorObjectKind: aClass [
	^self majorObjectFamixClasses includes: aClass
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
	^self preprocessingMap
		at: self file fullName
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
