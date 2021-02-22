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
PWBIRComplexEntity >> addAccessDependency: anIREntity inModel: irModel [
	| dep |
	dep := (irModel createIR: PWBIRDependencyAccess)
		irEntity: anIREntity ;
		yourself.
	self addDependency: dep.
	^dep
]

{ #category : #accessing }
PWBIRComplexEntity >> addDependency: anIREntity [
	self dependencies add: anIREntity 
]

{ #category : #accessing }
PWBIRComplexEntity >> addInvocationDependency: irEntities inModel: irModel [
	| dep |
	dep := (irModel createIR: PWBIRDependencyInvocation)
		candidates: irEntities ;
		yourself.
	self dependencies add: dep.
	^dep
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
PWBIRComplexEntity >> toFamix: famixModel [
	famixEntity ifNotNil: [ ^famixEntity ].

	super toFamix: famixModel.
	
	members ifNotNil: [
		members do: [ :irEntity | famixEntity addMemberIR: irEntity ] ].
	dependencies ifNotNil: [
		dependencies do: [ :irEntity | famixEntity addDependencyToIR: irEntity ] ].

	^famixEntity
]
