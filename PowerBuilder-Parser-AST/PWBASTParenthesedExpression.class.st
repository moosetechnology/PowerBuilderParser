Class {
	#name : #PWBASTParenthesedExpression,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTParenthesedExpression >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTParenthesedExpression: self
]

{ #category : #accessing }
PWBASTParenthesedExpression >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTParenthesedExpression >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
PWBASTParenthesedExpression >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTParenthesedExpression >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTParenthesedExpression >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTParenthesedExpression >> stopPosition: anObject [
	stopPosition := anObject
]
