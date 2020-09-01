Class {
	#name : #MrlPWBASTTypeVariable,
	#superclass : #Object,
	#instVars : [
		'attributes',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTTypeVariable >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ attributes = anObject attributes
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTTypeVariable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTTypeVariable: self
]

{ #category : #accessing }
MrlPWBASTTypeVariable >> attributes [
	^ attributes
]

{ #category : #accessing }
MrlPWBASTTypeVariable >> attributes: anObject [
	attributes := anObject
]

{ #category : #comparing }
MrlPWBASTTypeVariable >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ attributes hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTTypeVariable >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTTypeVariable >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTTypeVariable >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTTypeVariable >> stopPosition: anObject [
	stopPosition := anObject
]
