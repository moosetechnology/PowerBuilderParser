Class {
	#name : #MrlPWBASTAccessModifier,
	#superclass : #Object,
	#instVars : [
		'accessModifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTAccessModifier >> = anObject [
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
MrlPWBASTAccessModifier >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTAccessModifier: self
]

{ #category : #accessing }
MrlPWBASTAccessModifier >> accessModifier [
	^ accessModifier
]

{ #category : #accessing }
MrlPWBASTAccessModifier >> accessModifier: anObject [
	accessModifier := anObject
]

{ #category : #comparing }
MrlPWBASTAccessModifier >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ accessModifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTAccessModifier >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTAccessModifier >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTAccessModifier >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTAccessModifier >> stopPosition: anObject [
	stopPosition := anObject
]
