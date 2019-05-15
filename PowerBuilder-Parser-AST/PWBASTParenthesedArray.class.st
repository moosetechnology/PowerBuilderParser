Class {
	#name : #PWBASTParenthesedArray,
	#superclass : #Object,
	#instVars : [
		'expression',
		'expressions',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTParenthesedArray >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTParenthesedArray: self
]

{ #category : #accessing }
PWBASTParenthesedArray >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTParenthesedArray >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
PWBASTParenthesedArray >> expressions [
	^ expressions
]

{ #category : #accessing }
PWBASTParenthesedArray >> expressions: anObject [
	expressions := anObject
]

{ #category : #accessing }
PWBASTParenthesedArray >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTParenthesedArray >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTParenthesedArray >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTParenthesedArray >> stopPosition: anObject [
	stopPosition := anObject
]
