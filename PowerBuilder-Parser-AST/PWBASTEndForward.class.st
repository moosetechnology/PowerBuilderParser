Class {
	#name : #PWBASTEndForward,
	#superclass : #Object,
	#instVars : [
		'endForward',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTEndForward >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ endForward = anObject endForward
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTEndForward >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEndForward: self
]

{ #category : #accessing }
PWBASTEndForward >> endForward [
	^ endForward
]

{ #category : #accessing }
PWBASTEndForward >> endForward: anObject [
	endForward := anObject
]

{ #category : #comparing }
PWBASTEndForward >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ endForward hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTEndForward >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTEndForward >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTEndForward >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTEndForward >> stopPosition: anObject [
	stopPosition := anObject
]
