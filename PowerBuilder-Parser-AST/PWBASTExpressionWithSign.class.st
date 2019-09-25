Class {
	#name : #PWBASTExpressionWithSign,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTExpressionWithSign >> = anObject [
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
PWBASTExpressionWithSign >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTExpressionWithSign: self
]

{ #category : #accessing }
PWBASTExpressionWithSign >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTExpressionWithSign >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTExpressionWithSign >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTExpressionWithSign >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTExpressionWithSign >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTExpressionWithSign >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTExpressionWithSign >> stopPosition: anObject [
	stopPosition := anObject
]
