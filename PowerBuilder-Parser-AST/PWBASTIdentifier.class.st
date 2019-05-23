Class {
	#name : #PWBASTIdentifier,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTIdentifier >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTIdentifier: self
]

{ #category : #accessing }
PWBASTIdentifier >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTIdentifier >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTIdentifier >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTIdentifier >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTIdentifier >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTIdentifier >> stopPosition: anObject [
	stopPosition := anObject
]
