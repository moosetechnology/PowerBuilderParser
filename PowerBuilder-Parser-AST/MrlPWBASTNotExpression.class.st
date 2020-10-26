Class {
	#name : #MrlPWBASTNotExpression,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTNotExpression >> = anObject [
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
MrlPWBASTNotExpression >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTNotExpression: self
]

{ #category : #accessing }
MrlPWBASTNotExpression >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTNotExpression >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
MrlPWBASTNotExpression >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTNotExpression >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTNotExpression >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTNotExpression >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTNotExpression >> stopPosition: anObject [
	stopPosition := anObject
]
