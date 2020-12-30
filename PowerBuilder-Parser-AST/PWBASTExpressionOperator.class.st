Class {
	#name : #PWBASTExpressionOperator,
	#superclass : #Object,
	#instVars : [
		'expressionOperator',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTExpressionOperator >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expressionOperator = anObject expressionOperator
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTExpressionOperator >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTExpressionOperator: self
]

{ #category : #accessing }
PWBASTExpressionOperator >> expressionOperator [
	^ expressionOperator
]

{ #category : #accessing }
PWBASTExpressionOperator >> expressionOperator: anObject [
	expressionOperator := anObject
]

{ #category : #comparing }
PWBASTExpressionOperator >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expressionOperator hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTExpressionOperator >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTExpressionOperator >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTExpressionOperator >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTExpressionOperator >> stopPosition: anObject [
	stopPosition := anObject
]
