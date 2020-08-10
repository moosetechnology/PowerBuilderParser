Class {
	#name : #FamixPWBBehavioral,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTSourceEntity + FamixTWithAccesses + FamixTWithInvocations + FamixTWithReferences',
	#classTraits : 'FamixTSourceEntity classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FamixTWithReferences classTrait',
	#instVars : [
		'#addedCharacter',
		'#content',
		'#cyclomaticComplexity',
		'#deadArguments',
		'#deadLocalVariables',
		'#incomingInvocationSenders',
		'#variables => FMMany type: #FamixPWBVariable opposite: #behavioral'
	],
	#category : #'Famix-PowerBuilder-Entities-Entities'
}

{ #category : #meta }
FamixPWBBehavioral class >> annotation [

	<FMClass: #Behavioral super: #FamixPWBEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #adding }
FamixPWBBehavioral >> addVariable: anObject [
	<generated>
	^ self variables add: anObject
]

{ #category : #api }
FamixPWBBehavioral >> allOutgoingInvocationCandidates [
	| scan scanTop |
	scan := OrderedCollection
		withAll:
			(self outgoingInvocationsCandidates
				reject: [ :method | method isPredefinedMethod ]) asSet.
	scanTop := 1.
	[ scanTop > scan size ]
		whileFalse: [ scan
				addAll:
					(((scan at: scanTop) outgoingInvocations flatCollect: #candidates)
						reject: [ :method | method isPredefinedMethod or: [ scan includes: method ] ]).
			scanTop := scanTop + 1 ].
	^ scan
]

{ #category : #accessing }
FamixPWBBehavioral >> brPath [
	brPath
		ifNil: [ brPath := self invokedBehaviours
				reject: [ :method | method parentType isNil ] ].
	^ brPath asOrderedCollection
		sortDescending: [ :method | method invokedBehaviours size ]
]

{ #category : #'as yet unclassified' }
FamixPWBBehavioral >> clearReplicationCache [
	self propertyNamed: #replicas put: OrderedCollection new
]

{ #category : #api }
FamixPWBBehavioral >> content [
	content ifNil: [ self setContent ].
	content ifEmpty: [ self setContent ].
	^ content
]

{ #category : #'visitor-double dispatching' }
FamixPWBBehavioral >> createAccessTo: aFamixPWBAccessible writing: aBoolean [
	^ aFamixPWBAccessible accessAssociation new
		source: self;
		target: aFamixPWBAccessible;
		isWrite: aBoolean;
		mooseModel: self mooseModel;
		yourself
]

{ #category : #initialization }
FamixPWBBehavioral >> createParameter: argAST [
	^ FamixPWBParameter new
		declaredType: argAST type type basicType;
		name: argAST identifier identifier;
		mooseModel: self mooseModel;
		behavioral: self
]

{ #category : #'as yet unclassified' }
FamixPWBBehavioral >> createStubValueHolderNamed: aString [ 
	^ self createValueHolderNamed: aString
]

{ #category : #'as yet unclassified' }
FamixPWBBehavioral >> createValueHolderNamed: aString [ 
	^ FamixPWBVariable new
		behavioral: self;
		mooseModel: self mooseModel;
		name: aString;
		yourself
]

{ #category : #accessing }
FamixPWBBehavioral >> cyclomaticComplexity [

	<FMProperty: #cyclomaticComplexity type: #Number>
	<generated>
	^ cyclomaticComplexity
]

{ #category : #accessing }
FamixPWBBehavioral >> cyclomaticComplexity: anObject [
	<generated>
	cyclomaticComplexity := anObject
]

{ #category : #api }
FamixPWBBehavioral >> incomingInvocationsSenders [
	^ (self incomingInvocations collectAsSet: #sender)
		reject: [ :m | (m isKindOf: FamixPWBmajorObject) or: [ m isPredefinedMethod ] ]
]

{ #category : #'as yet unclassified' }
FamixPWBBehavioral >> increaseCyclomaticComplexity [
	self cyclomaticComplexity: self cyclomaticComplexity + 1
]

{ #category : #accessing }
FamixPWBBehavioral >> isNotPWBDead [
	^ self isPWBDead not
]

{ #category : #api }
FamixPWBBehavioral >> isPredefinedMethod [
	^ self predifinedMethods includes: self name asLowercase
]

{ #category : #api }
FamixPWBBehavioral >> numberOfIncomingInvocations [
	^ self incomingInvocationsSenders size
]

{ #category : #api }
FamixPWBBehavioral >> outgoingInvocationsCandidates [
	^ (self outgoingInvocations flatCollect: #candidates) asSet
]

{ #category : #api }
FamixPWBBehavioral >> predifinedMethods [
	^ #('sort' 'len' 'setnull' 'string' 'long' 'rowcount' 'Find' 'getitemdate' 'retrieve' 'isnull' 'setsort' 'getitemstring' 'isnull' 'left' 'setrow' 'upprt' 'trim' 'right' 'now' 'datetime' 'relativedate' 'today' 'triggerevent' 'replace' 'long' 'isnumber' 'getitemnumber' 'constructor' 'destroy')
]

{ #category : #accessing }
FamixPWBBehavioral >> reachableEntities [
	^ self variables
]

{ #category : #api }
FamixPWBBehavioral >> roassalPresenter [
	^ CIMFunctionInvocationsPresenter
]

{ #category : #api }
FamixPWBBehavioral >> setContent [
	content := self allOutgoingInvocationCandidates
		add: self;
		yourself
]

{ #category : #initialization }
FamixPWBBehavioral >> setParameters [
	| signature signatureAST |
	signature := PWBPreprocessor parse: self sourceText lines first.
	signatureAST := PWBCommonParser new functionSignature
		parse: signature.
	signatureAST arguments arguments ifNil: [ ^ self ].
	signatureAST arguments arguments
		do: [ :argAST | self addParameter: (self createParameter: argAST) ]
]

{ #category : #accessing }
FamixPWBBehavioral >> variables [
	"Relation named: #variables type: #FamixPWBVariable opposite: #behavioral"

	<generated>
	<derived>
	^ variables
]

{ #category : #accessing }
FamixPWBBehavioral >> variables: anObject [

	<generated>
	variables value: anObject
]

{ #category : #navigation }
FamixPWBBehavioral >> variablesGroup [
	<generated>
	<navigation: 'Variables'>
	^ MooseGroup withAll: self variables asSet
]

{ #category : #api }
FamixPWBBehavioral >> withAllOutgoingInvocationCandidates [
	^ self allOutgoingInvocationCandidates
		add: self;
		yourself
]
