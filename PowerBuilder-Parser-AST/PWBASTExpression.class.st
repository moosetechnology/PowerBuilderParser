Class {
	#name : #PWBASTExpression,
	#superclass : #Object,
	#instVars : [
		'expression',
		'methodInvocations'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTExpression >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTExpression: self
]

{ #category : #accessing }
PWBASTExpression >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTExpression >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
PWBASTExpression >> methodInvocations [
	^ methodInvocations
]

{ #category : #accessing }
PWBASTExpression >> methodInvocations: anObject [
	methodInvocations := anObject
]
