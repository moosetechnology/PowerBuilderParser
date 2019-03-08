Class {
	#name : #PWBASTExpressionWithSign,
	#superclass : #Object,
	#instVars : [
		'expression'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTExpressionWithSign >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTExpressionWithSign: self
]

{ #category : #accessing }
PWBASTExpressionWithSign >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTExpressionWithSign >> expression: anObject [
	expression := anObject
]
