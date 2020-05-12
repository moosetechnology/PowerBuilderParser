Class {
	#name : #FamixPWBBehavioral,
	#superclass : #FamixPWBEntity,
	#traits : 'FamixTWithAccesses + FamixTWithInvocations + FamixTWithReferences + FamixTWithSourceAnchor',
	#classTraits : 'FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FamixTWithReferences classTrait + FamixTWithSourceAnchor classTrait',
	#instVars : [
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

	<FMClass: #Behavioral super: #MooseEntity>
	<package: #'Famix-PowerBuilder-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixPWBBehavioral class >> metamodel [

	<generated>
	^ FamixPWBModel metamodel
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

{ #category : #'as yet unclassified' }
FamixPWBBehavioral >> createParameter: aString [
	^ FamixPWBParameter new
		behavioral: self;
		mooseModel: self mooseModel;
		name: aString;
		yourself
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

{ #category : #testing }
FamixPWBBehavioral >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isMethod [

	<generated>
	^ false
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
FamixPWBBehavioral >> isReference [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixPWBBehavioral >> isType [

	<generated>
	^ false
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
