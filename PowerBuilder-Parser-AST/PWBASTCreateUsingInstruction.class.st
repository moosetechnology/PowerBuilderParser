Class {
	#name : #PWBASTCreateUsingInstruction,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTCreateUsingInstruction >> = anObject [
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
PWBASTCreateUsingInstruction >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCreateUsingInstruction: self
]

{ #category : #accessing }
PWBASTCreateUsingInstruction >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTCreateUsingInstruction >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTCreateUsingInstruction >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTCreateUsingInstruction >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCreateUsingInstruction >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCreateUsingInstruction >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCreateUsingInstruction >> stopPosition: anObject [
	stopPosition := anObject
]
