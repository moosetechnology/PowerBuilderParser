Class {
	#name : #PWBASTExpressionList,
	#superclass : #Object,
	#instVars : [
		'expressions'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTExpressionList >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTExpressionList: self
]

{ #category : #accessing }
PWBASTExpressionList >> expressions [
	^ expressions
]

{ #category : #accessing }
PWBASTExpressionList >> expressions: anObject [
	expressions := anObject
]
