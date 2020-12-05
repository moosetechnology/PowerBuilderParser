Class {
	#name : #PWBASTParenthesedExpression,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTParenthesedExpression >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expression = anObject expression
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTParenthesedExpression >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTParenthesedExpression: self
]

{ #category : #accessing }
PWBASTParenthesedExpression >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTParenthesedExpression >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTParenthesedExpression >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTParenthesedExpression >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTParenthesedExpression >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTParenthesedExpression >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTParenthesedExpression >> stopPosition: anObject [
	stopPosition := anObject
]
