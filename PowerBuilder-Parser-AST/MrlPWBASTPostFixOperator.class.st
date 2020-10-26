Class {
	#name : #MrlPWBASTPostFixOperator,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTPostFixOperator >> = anObject [
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
MrlPWBASTPostFixOperator >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTPostFixOperator: self
]

{ #category : #accessing }
MrlPWBASTPostFixOperator >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTPostFixOperator >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
MrlPWBASTPostFixOperator >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTPostFixOperator >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTPostFixOperator >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTPostFixOperator >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTPostFixOperator >> stopPosition: anObject [
	stopPosition := anObject
]
