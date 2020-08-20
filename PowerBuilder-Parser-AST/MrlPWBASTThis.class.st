Class {
	#name : #MrlPWBASTThis,
	#superclass : #Object,
	#instVars : [
		'this',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTThis >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ this = anObject this
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTThis >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTThis: self
]

{ #category : #comparing }
MrlPWBASTThis >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ this hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTThis >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTThis >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTThis >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTThis >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTThis >> this [
	^ this
]

{ #category : #accessing }
MrlPWBASTThis >> this: anObject [
	this := anObject
]
