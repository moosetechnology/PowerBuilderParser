Class {
	#name : #PWBASTAccessModifierDefiner,
	#superclass : #Object,
	#instVars : [
		'accessModifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTAccessModifierDefiner >> = anObject [
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
PWBASTAccessModifierDefiner >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAccessModifierDefiner: self
]

{ #category : #accessing }
PWBASTAccessModifierDefiner >> accessModifier [
	^ accessModifier
]

{ #category : #accessing }
PWBASTAccessModifierDefiner >> accessModifier: anObject [
	accessModifier := anObject
]

{ #category : #comparing }
PWBASTAccessModifierDefiner >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ accessModifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTAccessModifierDefiner >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTAccessModifierDefiner >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTAccessModifierDefiner >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTAccessModifierDefiner >> stopPosition: anObject [
	stopPosition := anObject
]
