Class {
	#name : #FamixPWBBehavioral,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTSourceEntity + FamixTWithAccesses + FamixTWithInvocations + FamixTWithReferences',
	#classTraits : 'FamixTSourceEntity classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FamixTWithReferences classTrait',
	#instVars : [
		'#accessModifier => FMProperty',
		'#addedCharacter',
		'#businessRulePath',
		'#content',
		'#cyclomaticComplexity',
		'#deadArguments',
		'#deadLocalVariables',
		'#incomingInvocationSenders',
		'#parameters => FMMany type: #FamixPWBParameter opposite: #behavioral',
		'#returns => FMMany type: #FamixPWBFunctionReturn opposite: #behavioral',
		'#signature => FMOne type: #FamixPWBBehaviorSignature opposite: #behavioral',
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

{ #category : #accessing }
FamixPWBBehavioral >> accessModifier [

	<FMProperty: #accessModifier type: #String>
	<generated>
	^ accessModifier
]

{ #category : #accessing }
FamixPWBBehavioral >> accessModifier: anObject [
	<generated>
	accessModifier := anObject
]

{ #category : #'Famix-Extensions' }
FamixPWBBehavioral >> accessedAttributes [
	"Returns the set of attributes of my class accessed by me (method). 
	Used to support the calculation of LCOM"

	^ ((self queryOutgoingAccesses opposites
		withinParentUsing: FamixPWBPBTWithMethods) asSet
		select: #isInstanceVariable)
		reject: [ :aMethod | {'true' . 'false'} includes: aMethod name asLowercase ]
]

{ #category : #adding }
FamixPWBBehavioral >> addParameter: anObject [
	<generated>
	^ self parameters add: anObject
]

{ #category : #adding }
FamixPWBBehavioral >> addReturn: anObject [
	<generated>
	^ self returns add: anObject
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
	visitor := PWBEntityCreatorFutureReferenceSolverVisitor new
		model: self mooseModel.
	^ FamixPWBParameter new
		parameterType: (visitor visit: argAST type);
		name: argAST identifier identifier;
		mooseModel: self mooseModel;
		behavioral: self;
		startPos: argAST startPosition
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

{ #category : #accessing }
FamixPWBBehavioral >> getBusinessRuleFunctions [
	businessRulePath
		ifNil: [ businessRulePath := self invokedBehaviours
				reject: [ :method | method parentType isNil ] ].
	^ businessRulePath asOrderedCollection
		sortDescending: [ :method | method invokedBehaviours size ]
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
FamixPWBBehavioral >> instanceVariableAccesses [
	^ self accesses select: [ :acc | acc isInstanceVariableAccess ]
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

{ #category : #accessing }
FamixPWBBehavioral >> parameters: anObject [

	<generated>
	parameters value: anObject
]

{ #category : #navigation }
FamixPWBBehavioral >> parametersGroup [
	<generated>
	<navigation: 'Parameters'>
	^ MooseSpecializedGroup withAll: self parameters asSet
]

{ #category : #api }
FamixPWBBehavioral >> predifinedMethods [
	^ #('sort' 'len' 'setnull' 'string' 'long' 'rowcount' 'Find' 'getitemdate' 'retrieve' 'isnull' 'setsort' 'getitemstring' 'isnull' 'left' 'setrow' 'upprt' 'trim' 'right' 'now' 'datetime' 'relativedate' 'today' 'triggerevent' 'replace' 'long' 'isnumber' 'getitemnumber' 'constructor' 'destroy')
]

{ #category : #accessing }
FamixPWBBehavioral >> reachableEntities [
	^ self variables
]

{ #category : #accessing }
FamixPWBBehavioral >> returns [
	"Relation named: #returns type: #FamixPWBFunctionReturn opposite: #behavioral"

	<generated>
	<derived>
	^ returns
]

{ #category : #accessing }
FamixPWBBehavioral >> returns: anObject [

	<generated>
	returns value: anObject
]

{ #category : #navigation }
FamixPWBBehavioral >> returnsGroup [
	<generated>
	<navigation: 'Returns'>
	^ MooseSpecializedGroup withAll: self returns asSet
]

{ #category : #api }
FamixPWBBehavioral >> setContent [
	content := self allOutgoingInvocationCandidates
		add: self;
		yourself
]

{ #category : #accessing }
FamixPWBBehavioral >> signature [
	"Relation named: #signature type: #FamixPWBBehaviorSignature opposite: #behavioral"

	<generated>
	^ signature
]

{ #category : #accessing }
FamixPWBBehavioral >> signature: anObject [

	<generated>
	signature := anObject
]

{ #category : #navigation }
FamixPWBBehavioral >> signatureGroup [
	<generated>
	<navigation: 'Signature'>
	^ MooseSpecializedGroup with: self signature
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
	^ MooseSpecializedGroup withAll: self variables asSet
]

{ #category : #api }
FamixPWBBehavioral >> withAllOutgoingInvocationCandidates [
	^ self allOutgoingInvocationCandidates
		add: self;
		yourself
]
