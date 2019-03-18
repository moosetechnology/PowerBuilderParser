Class {
	#name : #PWBASTExpressionList,
	#superclass : #Object,
	#instVars : [
		'expressions',
		'startPosition',
		'stopPosition'
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

{ #category : #accessing }
PWBASTExpressionList >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTExpressionList >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTExpressionList >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTExpressionList >> stopPosition: anObject [
	stopPosition := anObject
]
