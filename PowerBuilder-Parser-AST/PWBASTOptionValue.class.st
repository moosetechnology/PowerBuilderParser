Class {
	#name : #PWBASTOptionValue,
	#superclass : #Object,
	#instVars : [
		'expression'
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
