Class {
	#name : #PWBASTExpressionTerm,
	#superclass : #Object,
	#instVars : [
		'expressionTerm',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTExpressionTerm >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expressionTerm = anObject expressionTerm
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTExpressionTerm >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTExpressionTerm: self
]

{ #category : #accessing }
PWBASTExpressionTerm >> expressionTerm [
	^ expressionTerm
]

{ #category : #accessing }
PWBASTExpressionTerm >> expressionTerm: anObject [
	expressionTerm := anObject
]

{ #category : #comparing }
PWBASTExpressionTerm >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expressionTerm hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTExpressionTerm >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTExpressionTerm >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTExpressionTerm >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTExpressionTerm >> stopPosition: anObject [
	stopPosition := anObject
]
