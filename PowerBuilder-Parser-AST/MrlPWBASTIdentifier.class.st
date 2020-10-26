Class {
	#name : #MrlPWBASTIdentifier,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTIdentifier >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ identifier = anObject identifier
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTIdentifier >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTIdentifier: self
]

{ #category : #comparing }
MrlPWBASTIdentifier >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTIdentifier >> identifier [
	^ identifier
]

{ #category : #accessing }
MrlPWBASTIdentifier >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
MrlPWBASTIdentifier >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTIdentifier >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTIdentifier >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTIdentifier >> stopPosition: anObject [
	stopPosition := anObject
]
