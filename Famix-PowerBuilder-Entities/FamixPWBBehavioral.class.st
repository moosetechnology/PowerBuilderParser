Class {
	#name : #FamixPWBBehavioral,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTNamedEntity + FamixTWithAccesses + FamixTWithInvocations + FamixTWithReferences',
	#classTraits : 'FamixTNamedEntity classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FamixTWithReferences classTrait',
	#instVars : [
		'#addedCharacter',
		'#businessRulePath',
		'#content',
		'#cyclomaticComplexity',
		'#deadArguments',
		'#deadLocalVariables',
		'#incomingInvocationSenders',
		'#localVariables => FMMany type: #FamixPWBLocalVariable opposite: #parentBehaviouralEntity'
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
FamixPWBBehavioral >> addLocalVariable: anObject [
	<generated>
	^ self localVariables add: anObject
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

{ #category : #initialization }
FamixPWBBehavioral >> clean: aString [
	^ aString copyReplaceAll: '/*' with: ''
]

{ #category : #api }
FamixPWBBehavioral >> content [
	content ifNil: [ self setContent ].
	content ifEmpty: [ self setContent ].
	^ content
]

{ #category : #'visitor-double dispatching' }
FamixPWBBehavioral >> createAccessTo: aFamixPWBAccessible writing: aBoolean [
	self flag: #REMOVEME .
	^ aFamixPWBAccessible accessAssociation new
		source: self;
		target: aFamixPWBAccessible;
		isWrite: aBoolean;
		mooseModel: self mooseModel;
		yourself
]

{ #category : #initialization }
FamixPWBBehavioral >> createParameter: argAST [
	| visitor |
	visitor := PWBCompilationUnitVisitor new
		model: self mooseModel.
	^ FamixPWBParameter new
		parameterType: (visitor visit: argAST type);
		name: argAST identifier identifier;
		mooseModel: self mooseModel;
		behavioral: self;
		startPos: argAST startPosition
]

{ #category : #converting }
FamixPWBBehavioral >> dependingFamixBehavioural: aFamixBehavioural [
	| invok |
	^invok := FamixPWBInvocation new
		candidates: {  self } ;
		sender: aFamixBehavioural ;
		mooseModel: self mooseModel ;
		yourself
]

{ #category : #accessing }
FamixPWBBehavioral >> getOneAccessPerInsVarAccessed [
	| instVarAccesses |
	instVarAccesses := OrderedCollection new.
	((self accesses
		select: [ :acc | acc isInstanceVariableAccess and: [ acc isWrite ] ])
		groupedBy: [ :acc | acc sourceText ])
		keysAndValuesDo: [ :k :v | instVarAccesses add: v anyOne ].
	^ instVarAccesses
]

{ #category : #api }
FamixPWBBehavioral >> incomingInvocationsSenders [
	^ (self incomingInvocations collectAsSet: #sender)
		reject: [ :m | (m isKindOf: FamixPWBmajorObject) or: [ m isPredefinedMethod ] ]
]

{ #category : #'Famix-Extensions' }
FamixPWBBehavioral >> invokedBehaviours [
	^ self queryAllOutgoingInvocations opposites
]

{ #category : #'Famix-Extensions' }
FamixPWBBehavioral >> invokedMethods [
	<FMProperty: #invokedMethods type: #FamixPWBBehavioral>
	<derived>
	<multivalued>
	<FMComment: 'The methods invoked by the receiver'>
	^ self invokedBehaviours select: [ :each | each isMethod ]
]

{ #category : #'Famix-Extensions' }
FamixPWBBehavioral >> invokingBehaviours [
	^ self queryAllIncomingInvocations opposites
]

{ #category : #'Famix-Extensions' }
FamixPWBBehavioral >> invokingMethods [
	<FMProperty: #invokingMethods type: #FamixPWBBehavioral>
	<derived>
	<multivalued>
	<FMComment: 'The methods invoking the receiver'>
	^ self invokingBehaviours select: [ :each | each isMethod ]
]

{ #category : #testing }
FamixPWBBehavioral >> isBehavioural [
	^ true
]

{ #category : #accessing }
FamixPWBBehavioral >> isNotPWBDead [
	^ self isPWBDead not
]

{ #category : #api }
FamixPWBBehavioral >> isPredefinedMethod [
	^ self predifinedMethods includes: self name asLowercase
]

{ #category : #testing }
FamixPWBBehavioral >> isPrivate [
	^ self accessModifier isNotNil
		and: [ self accessModifier asLowercase = 'private' ]
]

{ #category : #accessing }
FamixPWBBehavioral >> localVariables [
	"Relation named: #localVariables type: #FamixPWBLocalVariable opposite: #parentBehaviouralEntity"

	<generated>
	<derived>
	^ localVariables
]

{ #category : #accessing }
FamixPWBBehavioral >> localVariables: anObject [

	<generated>
	localVariables value: anObject
]

{ #category : #printing }
FamixPWBBehavioral >> mooseNameOn: stream [
	^super mooseNameOn: stream.
"	self parentType
		ifNotNil: [ :parent | 
			parent mooseNameOn: stream.
			stream nextPut: $. ].
	self name ifNotNil: [ :aName | stream nextPutAll: aName ]"
]

{ #category : #api }
FamixPWBBehavioral >> numberOfIncomingInvocations [
	^ self incomingInvocationsSenders size
]

{ #category : #api }
FamixPWBBehavioral >> outgoingInvocationsCandidates [
	^ (self outgoingInvocations flatCollect: #candidates) asSet
]

{ #category : #accessing }
FamixPWBBehavioral >> parameters [
	"Relation named: #parameters type: #FamixPWBParameter opposite: #behavioral"

	^ parameters
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
FamixPWBBehavioral >> setContent [
	content := self allOutgoingInvocationCandidates
		add: self;
		yourself
]

{ #category : #api }
FamixPWBBehavioral >> withAllOutgoingInvocationCandidates [
	^ self allOutgoingInvocationCandidates
		add: self;
		yourself
]
