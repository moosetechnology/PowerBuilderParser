Class {
	#name : #MrlPWBASTSharedVariables,
	#superclass : #Object,
	#instVars : [
		'attributes',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTSharedVariables >> = anObject [
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
MrlPWBASTSharedVariables >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTSharedVariables: self
]

{ #category : #accessing }
MrlPWBASTSharedVariables >> attributes [
	^ attributes
]

{ #category : #accessing }
MrlPWBASTSharedVariables >> attributes: anObject [
	attributes := anObject
]

{ #category : #comparing }
MrlPWBASTSharedVariables >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ attributes hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTSharedVariables >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTSharedVariables >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTSharedVariables >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTSharedVariables >> stopPosition: anObject [
	stopPosition := anObject
]
