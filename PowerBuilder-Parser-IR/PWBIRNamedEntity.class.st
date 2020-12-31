Class {
	#name : #PWBIRNamedEntity,
	#superclass : #Object,
	#instVars : [
		'name',
		'owner',
		'famixEntity'
	],
	#category : #'PowerBuilder-Parser-IR'
}

{ #category : #accessing }
PWBIRNamedEntity >> name [
	^ name
]

{ #category : #accessing }
PWBIRNamedEntity >> name: anObject [
	name := anObject
]

{ #category : #accessing }
PWBIRNamedEntity >> owner [
	^ owner
]

{ #category : #accessing }
PWBIRNamedEntity >> owner: anObject [
	owner := anObject
]

{ #category : #printing }
PWBIRNamedEntity >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPut: $( ;
		nextPutAll: name ;
		nextPut: $)
]
