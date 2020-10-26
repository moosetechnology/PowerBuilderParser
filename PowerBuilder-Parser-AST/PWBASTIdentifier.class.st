Class {
	#name : #PWBASTIdentifier,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTIdentifier >> = anObject [
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
PWBASTIdentifier >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTIdentifier: self
]

{ #category : #comparing }
PWBASTIdentifier >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTIdentifier >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTIdentifier >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTIdentifier >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTIdentifier >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTIdentifier >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTIdentifier >> stopPosition: anObject [
	stopPosition := anObject
]
