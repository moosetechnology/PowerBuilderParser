Class {
	#name : #PWBASTNotExpression,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTNotExpression >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTNotExpression: self
]

{ #category : #accessing }
PWBASTNotExpression >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTNotExpression >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
PWBASTNotExpression >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTNotExpression >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTNotExpression >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTNotExpression >> stopPosition: anObject [
	stopPosition := anObject
]
