Class {
	#name : #PWBASTExpressionWithSign,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
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

{ #category : #accessing }
PWBASTExpressionWithSign >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTExpressionWithSign >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTExpressionWithSign >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTExpressionWithSign >> stopPosition: anObject [
	stopPosition := anObject
]
