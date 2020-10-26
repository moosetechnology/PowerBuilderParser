Class {
	#name : #PWBASTSpecialVariable,
	#superclass : #Object,
	#instVars : [
		'this',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTSpecialVariable >> = anObject [
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
PWBASTSpecialVariable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSpecialVariable: self
]

{ #category : #comparing }
PWBASTSpecialVariable >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ this hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTSpecialVariable >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSpecialVariable >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSpecialVariable >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSpecialVariable >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTSpecialVariable >> this [
	^ this
]

{ #category : #accessing }
PWBASTSpecialVariable >> this: anObject [
	this := anObject
]
