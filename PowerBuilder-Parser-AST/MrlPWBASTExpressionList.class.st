Class {
	#name : #MrlPWBASTExpressionList,
	#superclass : #Object,
	#instVars : [
		'expressions',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTExpressionList >> = anObject [
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
MrlPWBASTExpressionList >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTExpressionList: self
]

{ #category : #accessing }
MrlPWBASTExpressionList >> expressions [
	^ expressions
]

{ #category : #accessing }
MrlPWBASTExpressionList >> expressions: anObject [
	expressions := anObject
]

{ #category : #comparing }
MrlPWBASTExpressionList >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expressions hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTExpressionList >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTExpressionList >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTExpressionList >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTExpressionList >> stopPosition: anObject [
	stopPosition := anObject
]
