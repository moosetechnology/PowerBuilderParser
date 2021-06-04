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
	"order is important here, the first in the list is meaningful"
	^{ FamixPWBCustomType . FamixPWBBasicType . FamixPWBDataWindow . FamixPWBUserObject . FamixPWBStructure }
]

{ #category : #mapping }
PWBIRType class >> defaultFamixClasses: aString [
	"For powerbuilder defalt classes like datawindow, datastore, userobject declared as variable type"

	^ self powerbuilderSystemClasses
		at: aString asLowercase
		ifAbsent: self defaultFamixClasses
]

{ #category : #'as yet unclassified' }
PWBIRType class >> powerbuilderSystemClasses [
	^ {('datawindow' -> {FamixPWBDataWindow}).
	('userobject' -> {FamixPWBUserObject})} asDictionary
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
