Class {
	#name : #PWBIRType,
	#superclass : #PWBIRComplexEntity,
	#instVars : [
		'superType',
		'subTypes'
	],
	#category : #'PowerBuilder-Parser-IR-Core'
}

{ #category : #mapping }
PWBIRType class >> defaultFamixClasses [
	^{ FamixPWBCustomType . FamixPWBBasicType . FamixPWBDataWindow . FamixPWBUserObject . FamixPWBStructure }
]

{ #category : #accessing }
PWBIRType >> addSubType: anIRType [
	subTypes
		ifNil: [ subTypes := { anIRType } ]
		ifNotNil: [ subTypes add: anIRType ]
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
