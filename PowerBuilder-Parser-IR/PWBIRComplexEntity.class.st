"
An Intermediary Representation of an entity with members (e.g. a structuredType, a function, ...)

Instance variables:
- members, owned (e.g. parameters or local variables for a function)
- dependencies, references made (e.g. function invocations or variable accesses from a function)

"
Class {
	#name : #PWBIRComplexEntity,
	#superclass : #PWBIRNamedEntity,
	#instVars : [
		'dependencies',
		'members'
	],
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #mapping }
PWBIRComplexEntity class >> defaultFamixClasses [
	^#()
]

{ #category : #accessing }
PWBIRComplexEntity >> addDependencies: aCollection [
	"for invocation candidates, but actually needs to be kept together as one invocation"
	self addDependency: aCollection
]

{ #category : #accessing }
PWBIRComplexEntity >> addDependency: anIREntity [
	self dependencies add: anIREntity 
]

{ #category : #accessing }
PWBIRComplexEntity >> addMember: anIREntity [
	self members add: anIREntity 
]

{ #category : #converting }
PWBIRComplexEntity >> asSREntityScope [
	^SREntityScope new
		entity: self ;
		yourself
]

{ #category : #accessing }
PWBIRComplexEntity >> dependencies [ 
	^dependencies ifNil: [ dependencies := OrderedCollection new ]
]

{ #category : #testing }
PWBIRComplexEntity >> isIRComplexEntity [
	^true
]

{ #category : #accessing }
PWBIRComplexEntity >> members [
	^ members ifNil: [ members := OrderedCollection new ]
]

{ #category : #accessing }
PWBIRComplexEntity >> members: anObject [
	members := anObject
]

{ #category : #accessing }
PWBIRComplexEntity >> reachableEntities [
	^self members
]

{ #category : #converting }
PWBIRComplexEntity >> toFamix [
	famixEntity ifNotNil: [ ^famixEntity ].

	super toFamix.
	
	members ifNotNil: [
		members do: [ :irEntity | famixEntity addMemberIR: irEntity ] ].
	dependencies ifNotNil: [
		dependencies do: [ :irEntity | famixEntity addDependencyToIR: irEntity ] ].

	^famixEntity
]
