Class {
	#name : #MrlPWBASTExpressionTerm,
	#superclass : #Object,
	#instVars : [
		'expressionTerm',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTExpressionTerm >> = anObject [
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
MrlPWBASTExpressionTerm >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTExpressionTerm: self
]

{ #category : #accessing }
MrlPWBASTExpressionTerm >> expressionTerm [
	^ expressionTerm
]

{ #category : #accessing }
MrlPWBASTExpressionTerm >> expressionTerm: anObject [
	expressionTerm := anObject
]

{ #category : #comparing }
MrlPWBASTExpressionTerm >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expressionTerm hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTExpressionTerm >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTExpressionTerm >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTExpressionTerm >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTExpressionTerm >> stopPosition: anObject [
	stopPosition := anObject
]
