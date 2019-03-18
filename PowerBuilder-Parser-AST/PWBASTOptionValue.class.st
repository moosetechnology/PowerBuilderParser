Class {
	#name : #PWBASTOptionValue,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTOptionValue >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTOptionValue: self
]

{ #category : #accessing }
PWBASTOptionValue >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTOptionValue >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
PWBASTOptionValue >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTOptionValue >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTOptionValue >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTOptionValue >> stopPosition: anObject [
	stopPosition := anObject
]
