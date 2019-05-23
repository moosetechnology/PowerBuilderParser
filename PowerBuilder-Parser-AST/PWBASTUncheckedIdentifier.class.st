Class {
	#name : #PWBASTUncheckedIdentifier,
	#superclass : #Object,
	#instVars : [
		'uncheckedIdentifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTUncheckedIdentifier >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTUncheckedIdentifier: self
]

{ #category : #accessing }
PWBASTUncheckedIdentifier >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTUncheckedIdentifier >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTUncheckedIdentifier >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTUncheckedIdentifier >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTUncheckedIdentifier >> uncheckedIdentifier [
	^ uncheckedIdentifier
]

{ #category : #accessing }
PWBASTUncheckedIdentifier >> uncheckedIdentifier: anObject [
	uncheckedIdentifier := anObject
]
