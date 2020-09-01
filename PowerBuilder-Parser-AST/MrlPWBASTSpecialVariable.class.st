Class {
	#name : #MrlPWBASTSpecialVariable,
	#superclass : #Object,
	#instVars : [
		'this',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTSpecialVariable >> = anObject [
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
MrlPWBASTSpecialVariable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTSpecialVariable: self
]

{ #category : #comparing }
MrlPWBASTSpecialVariable >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ this hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTSpecialVariable >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTSpecialVariable >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTSpecialVariable >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTSpecialVariable >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTSpecialVariable >> this [
	^ this
]

{ #category : #accessing }
MrlPWBASTSpecialVariable >> this: anObject [
	this := anObject
]
