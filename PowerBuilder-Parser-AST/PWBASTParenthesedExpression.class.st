Class {
	#name : #PWBASTParenthesedExpression,
	#superclass : #Object,
	#instVars : [
		'expression'
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
