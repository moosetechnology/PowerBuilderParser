Class {
	#name : #PWBASTNotExpression,
	#superclass : #Object,
	#instVars : [
		'expression'
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
