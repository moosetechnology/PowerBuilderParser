Class {
	#name : #PWBIRWrongFamixClass,
	#superclass : #Error,
	#instVars : [
		'actualClass',
		'expectedClass'
	],
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #signalling }
PWBIRWrongFamixClass class >> signalFound: actualFamixClass insteadf: expectedFamixClass [
	^self new
		actualClass: actualFamixClass ;
		expectedClass: expectedFamixClass ;
		yourself
]

{ #category : #accessing }
PWBIRWrongFamixClass >> actualClass [
	^ actualClass
]

{ #category : #accessing }
PWBIRWrongFamixClass >> actualClass: anObject [
	actualClass := anObject
]

{ #category : #accessing }
PWBIRWrongFamixClass >> expectedClass [
	^ expectedClass
]

{ #category : #accessing }
PWBIRWrongFamixClass >> expectedClass: anObject [
	expectedClass := anObject
]

{ #category : #printing }
PWBIRWrongFamixClass >> printOn: aStream [
	super printOn: aStream.
	aStream
		<< $( ;
		<< ' found: ' ;
		<< actualClass name ;
		<< ' instead of: ' ;
		<< expectedClass name ;
		<< $)
]
