Class {
	#name : #PWBASTUncheckedIdentifier,
	#superclass : #Object,
	#instVars : [
		'uncheckedIdentifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTUncheckedIdentifier >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ uncheckedIdentifier = anObject uncheckedIdentifier
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTUncheckedIdentifier >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTUncheckedIdentifier: self
]

{ #category : #comparing }
PWBASTUncheckedIdentifier >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ uncheckedIdentifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTUncheckedIdentifier >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTUncheckedIdentifier >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTUncheckedIdentifier >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTUncheckedIdentifier >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTUncheckedIdentifier >> uncheckedIdentifier [
	^ uncheckedIdentifier
]

{ #category : #accessing }
PWBASTUncheckedIdentifier >> uncheckedIdentifier: anObject [
	uncheckedIdentifier := anObject
]
