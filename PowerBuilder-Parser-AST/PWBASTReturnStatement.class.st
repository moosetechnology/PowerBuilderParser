Class {
	#name : #PWBASTReturnStatement,
	#superclass : #Object,
	#instVars : [
		'expression'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTReturnStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTReturnStatement: self
]

{ #category : #accessing }
PWBASTReturnStatement >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTReturnStatement >> expression: anObject [
	expression := anObject
]
