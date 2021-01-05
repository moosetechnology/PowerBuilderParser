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
	self flag: 'was introduced for invocation candidates, but actually needs to be kept together as one invocation'.
	aCollection do: [ :irEntity | self dependencies add: irEntity ]
]

{ #category : #accessing }
PWBIRComplexEntity >> addDependency: anIREntity [
	self dependencies add: anIREntity 
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

{ #category : #accessing }
PWBIRComplexEntity >> dependencies: aCollection [
	dependencies := aCollection 
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
