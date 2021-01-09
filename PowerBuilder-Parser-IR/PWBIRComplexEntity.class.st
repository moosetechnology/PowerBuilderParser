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
PWBIRComplexEntity class >> mappingFamixClasses [
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
