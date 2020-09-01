Class {
	#name : #MrlPWBASTAccessModifierDefiner,
	#superclass : #Object,
	#instVars : [
		'accessModifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTAccessModifierDefiner >> = anObject [
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
MrlPWBASTAccessModifierDefiner >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTAccessModifierDefiner: self
]

{ #category : #accessing }
MrlPWBASTAccessModifierDefiner >> accessModifier [
	^ accessModifier
]

{ #category : #accessing }
MrlPWBASTAccessModifierDefiner >> accessModifier: anObject [
	accessModifier := anObject
]

{ #category : #comparing }
MrlPWBASTAccessModifierDefiner >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ accessModifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTAccessModifierDefiner >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTAccessModifierDefiner >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTAccessModifierDefiner >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTAccessModifierDefiner >> stopPosition: anObject [
	stopPosition := anObject
]
