Class {
	#name : #MrlPWBASTParenthesedExpression,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTParenthesedExpression >> = anObject [
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
MrlPWBASTParenthesedExpression >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTParenthesedExpression: self
]

{ #category : #accessing }
MrlPWBASTParenthesedExpression >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTParenthesedExpression >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
MrlPWBASTParenthesedExpression >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTParenthesedExpression >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTParenthesedExpression >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTParenthesedExpression >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTParenthesedExpression >> stopPosition: anObject [
	stopPosition := anObject
]
