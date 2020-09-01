Class {
	#name : #MrlPWBASTCreateUsingInstruction,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTCreateUsingInstruction >> = anObject [
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
MrlPWBASTCreateUsingInstruction >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTCreateUsingInstruction: self
]

{ #category : #accessing }
MrlPWBASTCreateUsingInstruction >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTCreateUsingInstruction >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
MrlPWBASTCreateUsingInstruction >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTCreateUsingInstruction >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTCreateUsingInstruction >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTCreateUsingInstruction >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTCreateUsingInstruction >> stopPosition: anObject [
	stopPosition := anObject
]
