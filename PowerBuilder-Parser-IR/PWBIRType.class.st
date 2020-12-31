Class {
	#name : #PWBIRType,
	#superclass : #PWBIRNamedEntity,
	#instVars : [
		'members',
		'superType',
		'subTypes',
		'expectedFamixKinds'
	],
	#category : #'PowerBuilder-Parser-IR'
}

{ #category : #mapping }
PWBIRType class >> mappingFamixClasses [
	^{ FamixPWBCustomType . FamixPWBBasicType . FamixPWBDataWindow . FamixPWBUserObject . FamixPWBStructure }
]

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
