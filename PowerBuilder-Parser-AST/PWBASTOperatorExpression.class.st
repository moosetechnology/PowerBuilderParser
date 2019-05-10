Class {
	#name : #PWBASTOperatorExpression,
	#superclass : #Object,
	#instVars : [
		'left',
		'methodInvocations',
		'right',
		'startPosition',
		'stopPosition'
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
PWBASTOperatorExpression >> methodInvocations [
	^ methodInvocations
]

{ #category : #accessing }
PWBASTOperatorExpression >> methodInvocations: anObject [
	methodInvocations := anObject
]

{ #category : #accessing }
PWBASTOperatorExpression >> right [
	^ right
]

{ #category : #accessing }
PWBASTOperatorExpression >> right: anObject [
	right := anObject
]

{ #category : #accessing }
PWBASTOperatorExpression >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTOperatorExpression >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTOperatorExpression >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTOperatorExpression >> stopPosition: anObject [
	stopPosition := anObject
]
