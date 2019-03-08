Class {
	#name : #PWBASTOperatorExpression,
	#superclass : #Object,
	#instVars : [
		'left',
		'methodInvocation',
		'right'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTOperatorExpression >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTOperatorExpression: self
]

{ #category : #accessing }
PWBASTOperatorExpression >> left [
	^ left
]

{ #category : #accessing }
PWBASTOperatorExpression >> left: anObject [
	left := anObject
]

{ #category : #accessing }
PWBASTOperatorExpression >> methodInvocation [
	^ methodInvocation
]

{ #category : #accessing }
PWBASTOperatorExpression >> methodInvocation: anObject [
	methodInvocation := anObject
]

{ #category : #accessing }
PWBASTOperatorExpression >> right [
	^ right
]

{ #category : #accessing }
PWBASTOperatorExpression >> right: anObject [
	right := anObject
]
