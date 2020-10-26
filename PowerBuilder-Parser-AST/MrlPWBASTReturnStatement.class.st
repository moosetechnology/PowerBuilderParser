Class {
	#name : #MrlPWBASTReturnStatement,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTReturnStatement >> = anObject [
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
MrlPWBASTReturnStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTReturnStatement: self
]

{ #category : #accessing }
MrlPWBASTReturnStatement >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTReturnStatement >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
MrlPWBASTReturnStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTReturnStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTReturnStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTReturnStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTReturnStatement >> stopPosition: anObject [
	stopPosition := anObject
]
