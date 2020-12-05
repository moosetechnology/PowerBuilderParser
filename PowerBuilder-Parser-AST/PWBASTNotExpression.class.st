Class {
	#name : #PWBASTNotExpression,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTNotExpression >> = anObject [
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
PWBASTNotExpression >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTNotExpression: self
]

{ #category : #accessing }
PWBASTNotExpression >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTNotExpression >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTNotExpression >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTNotExpression >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTNotExpression >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTNotExpression >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTNotExpression >> stopPosition: anObject [
	stopPosition := anObject
]
