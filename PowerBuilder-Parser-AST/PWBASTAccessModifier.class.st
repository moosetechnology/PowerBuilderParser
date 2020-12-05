Class {
	#name : #PWBASTAccessModifier,
	#superclass : #Object,
	#instVars : [
		'accessModifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTAccessModifier >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ accessModifier = anObject accessModifier
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTAccessModifier >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAccessModifier: self
]

{ #category : #accessing }
PWBASTAccessModifier >> accessModifier [
	^ accessModifier
]

{ #category : #accessing }
PWBASTAccessModifier >> accessModifier: anObject [
	accessModifier := anObject
]

{ #category : #comparing }
PWBASTAccessModifier >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ accessModifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTAccessModifier >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTAccessModifier >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTAccessModifier >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTAccessModifier >> stopPosition: anObject [
	stopPosition := anObject
]
