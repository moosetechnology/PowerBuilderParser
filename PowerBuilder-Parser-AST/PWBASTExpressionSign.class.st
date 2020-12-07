Class {
	#name : #PWBASTExpressionSign,
	#superclass : #Object,
	#instVars : [
		'expressionSign',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTExpressionSign >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expressionSign = anObject expressionSign
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTExpressionSign >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTExpressionSign: self
]

{ #category : #accessing }
PWBASTExpressionSign >> expressionSign [
	^ expressionSign
]

{ #category : #accessing }
PWBASTExpressionSign >> expressionSign: anObject [
	expressionSign := anObject
]

{ #category : #comparing }
PWBASTExpressionSign >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expressionSign hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTExpressionSign >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTExpressionSign >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTExpressionSign >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTExpressionSign >> stopPosition: anObject [
	stopPosition := anObject
]
