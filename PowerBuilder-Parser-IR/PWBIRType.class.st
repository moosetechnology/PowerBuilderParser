Class {
	#name : #PWBIRType,
	#superclass : #Object,
	#instVars : [
		'name',
		'members',
		'superType',
		'subTypes',
		'owner',
		'expectedFamixKinds'
	],
	#category : #'PowerBuilder-Parser-IR'
}

{ #category : #accessing }
PWBIRType >> addSubType: anIRType [
	subTypes
		ifNil: [ subTypes := { anIRType } ]
		ifNotNil: [ subTypes add: anIRType ]
]

{ #category : #accessing }
PWBIRType >> expectedFamixKinds [
	^ expectedFamixKinds
]

{ #category : #accessing }
PWBIRType >> expectedFamixKinds: aCollection [
	expectedFamixKinds := aCollection
]

{ #category : #accessing }
PWBIRType >> members [
	^ members
]

{ #category : #accessing }
PWBIRType >> members: anObject [
	members := anObject
]

{ #category : #accessing }
PWBIRType >> name [
	^ name
]

{ #category : #accessing }
PWBIRType >> name: anObject [
	name := anObject
]

{ #category : #accessing }
PWBIRType >> owner [
	^ owner
]

{ #category : #accessing }
PWBIRType >> owner: anObject [
	owner := anObject
]

{ #category : #printing }
PWBIRType >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPut: $( ;
		nextPutAll: name ;
		nextPut: $)
]

{ #category : #accessing }
PWBIRType >> subTypes [
	^ subTypes
]

{ #category : #accessing }
PWBIRType >> subTypes: anObject [
	subTypes := anObject
]

{ #category : #accessing }
PWBIRType >> superType [
	^ superType
]

{ #category : #accessing }
PWBIRType >> superType: anObject [
	superType := anObject
]
