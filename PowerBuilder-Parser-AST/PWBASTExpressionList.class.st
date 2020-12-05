Class {
	#name : #PWBASTExpressionList,
	#superclass : #Object,
	#instVars : [
		'expressions',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTExpressionList >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expressions = anObject expressions
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTExpressionList >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTExpressionList: self
]

{ #category : #accessing }
PWBASTExpressionList >> expressions [
	^ expressions
]

{ #category : #accessing }
PWBASTExpressionList >> expressions: anObject [
	expressions := anObject
]

{ #category : #comparing }
PWBASTExpressionList >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expressions hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTExpressionList >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTExpressionList >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTExpressionList >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTExpressionList >> stopPosition: anObject [
	stopPosition := anObject
]
