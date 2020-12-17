Class {
	#name : #PWBNullEntityObject,
	#superclass : #Object,
	#instVars : [
		'accessModifier'
	],
	#category : #'PowerBuilder-Importer-Visitors'
}

{ #category : #accessing }
PWBNullEntityObject >> accessModifier [
	^ accessModifier
]

{ #category : #accessing }
PWBNullEntityObject >> accessModifier: anObject [
	accessModifier := anObject
]

{ #category : #testing }
PWBNullEntityObject >> isNullPatternObject [
	^ true
]

{ #category : #'null pattern' }
PWBNullEntityObject >> name: aString [ 
	"null pattern"
]
