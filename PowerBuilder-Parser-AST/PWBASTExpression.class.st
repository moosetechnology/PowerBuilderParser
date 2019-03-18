Class {
	#name : #PWBASTExpression,
	#superclass : #Object,
	#instVars : [
		'expression',
		'methodInvocations',
		'startPosition',
		'stopPosition'
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

{ #category : #accessing }
PWBASTExpression >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTExpression >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTExpression >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTExpression >> stopPosition: anObject [
	stopPosition := anObject
]
