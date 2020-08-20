Class {
	#name : #MrlPWBASTEndForward,
	#superclass : #Object,
	#instVars : [
		'endForward',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTEndForward >> = anObject [
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
MrlPWBASTEndForward >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTEndForward: self
]

{ #category : #accessing }
MrlPWBASTEndForward >> endForward [
	^ endForward
]

{ #category : #accessing }
MrlPWBASTEndForward >> endForward: anObject [
	endForward := anObject
]

{ #category : #comparing }
MrlPWBASTEndForward >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ endForward hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTEndForward >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTEndForward >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTEndForward >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTEndForward >> stopPosition: anObject [
	stopPosition := anObject
]
