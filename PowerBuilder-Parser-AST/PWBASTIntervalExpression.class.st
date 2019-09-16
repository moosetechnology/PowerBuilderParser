Class {
	#name : #PWBASTIntervalExpression,
	#superclass : #Object,
	#instVars : [
		'from',
		'to',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTIntervalExpression >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTIntervalExpression: self
]

{ #category : #accessing }
PWBASTIntervalExpression >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTIntervalExpression >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
PWBASTIntervalExpression >> from [
	^ from
]

{ #category : #accessing }
PWBASTIntervalExpression >> from: anObject [
	from := anObject
]

{ #category : #accessing }
PWBASTIntervalExpression >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTIntervalExpression >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTIntervalExpression >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTIntervalExpression >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTIntervalExpression >> to [
	^ to
]

{ #category : #accessing }
PWBASTIntervalExpression >> to: anObject [
	to := anObject
]
