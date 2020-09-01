Class {
	#name : #MrlPWBASTExpressionWithSign,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTExpressionWithSign >> = anObject [
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
MrlPWBASTExpressionWithSign >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTExpressionWithSign: self
]

{ #category : #accessing }
MrlPWBASTExpressionWithSign >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTExpressionWithSign >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
MrlPWBASTExpressionWithSign >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTExpressionWithSign >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTExpressionWithSign >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTExpressionWithSign >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTExpressionWithSign >> stopPosition: anObject [
	stopPosition := anObject
]
