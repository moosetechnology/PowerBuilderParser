Class {
	#name : #PWBASTAccessModifier,
	#superclass : #Object,
	#instVars : [
		'accessModifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTAccessModifier >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAccessModifier: self
]

{ #category : #accessing }
PWBASTAccessModifier >> accessModifier [
	^ accessModifier
]

{ #category : #accessing }
PWBASTAccessModifier >> accessModifier: anObject [
	accessModifier := anObject
]

{ #category : #accessing }
PWBASTAccessModifier >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTAccessModifier >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTAccessModifier >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTAccessModifier >> stopPosition: anObject [
	stopPosition := anObject
]
