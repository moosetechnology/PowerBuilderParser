Class {
	#name : #PWBASTFunctionArgument,
	#superclass : #Object,
	#instVars : [
		'expression'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTFunctionArgument >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFunctionArgument: self
]

{ #category : #accessing }
PWBASTFunctionArgument >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTFunctionArgument >> expression: anObject [
	expression := anObject
]
