Class {
	#name : #PWBASTAccessModifierDefiner,
	#superclass : #Object,
	#instVars : [
		'accessModifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTAccessModifierDefiner >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAccessModifierDefiner: self
]

{ #category : #accessing }
PWBASTAccessModifierDefiner >> accessModifier [
	^ accessModifier
]

{ #category : #accessing }
PWBASTAccessModifierDefiner >> accessModifier: anObject [
	accessModifier := anObject
]

{ #category : #accessing }
PWBASTAccessModifierDefiner >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTAccessModifierDefiner >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTAccessModifierDefiner >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTAccessModifierDefiner >> stopPosition: anObject [
	stopPosition := anObject
]
