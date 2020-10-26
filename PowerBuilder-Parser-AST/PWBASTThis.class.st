Class {
	#name : #PWBASTThis,
	#superclass : #Object,
	#instVars : [
		'this',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTThis >> = anObject [
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
PWBASTThis >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTThis: self
]

{ #category : #comparing }
PWBASTThis >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ this hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTThis >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTThis >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTThis >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTThis >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTThis >> this [
	^ this
]

{ #category : #accessing }
PWBASTThis >> this: anObject [
	this := anObject
]
