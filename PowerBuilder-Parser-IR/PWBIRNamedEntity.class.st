Class {
	#name : #PWBIRNamedEntity,
	#superclass : #Object,
	#instVars : [
		'name',
		'owner',
		'famixEntity',
		'expectedFamixKinds'
	],
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #'instance creation' }
PWBIRNamedEntity class >> forFamixClass: aFamixClass [
	^(self irClassForFamixClass: aFamixClass)
		new
]

{ #category : #mapping }
PWBIRNamedEntity class >> irClassForFamixClass: aFamixClass [
	^(self allSubclasses
		detect: [ :sub | sub mappingFamixClasses includes: aFamixClass ]
		ifNone: [  self ]
	)
]

{ #category : #mapping }
PWBIRNamedEntity class >> mappingFamixClasses [
	self subclassResponsibility

]

{ #category : #accessing }
PWBIRNamedEntity >> addDependency: anIREntity [
	self subclassResponsibility 
]

{ #category : #accessing }
PWBIRNamedEntity >> expectedFamixKinds [
	^ expectedFamixKinds
]

{ #category : #accessing }
PWBIRNamedEntity >> expectedFamixKinds: aCollection [
	expectedFamixKinds := aCollection
]

{ #category : #testing }
PWBIRNamedEntity >> isBehavioural [
	^false
]

{ #category : #accessing }
PWBIRNamedEntity >> name [
	^ name
]

{ #category : #accessing }
PWBIRNamedEntity >> name: aString [
	name := aString
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
