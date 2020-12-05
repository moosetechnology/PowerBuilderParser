Class {
	#name : #PWBASTSharedVariables,
	#superclass : #Object,
	#instVars : [
		'attributes',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTSharedVariables >> = anObject [
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
PWBASTSharedVariables >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSharedVariables: self
]

{ #category : #accessing }
PWBASTSharedVariables >> attributes [
	^ attributes
]

{ #category : #accessing }
PWBASTSharedVariables >> attributes: anObject [
	attributes := anObject
]

{ #category : #comparing }
PWBASTSharedVariables >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ attributes hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTSharedVariables >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSharedVariables >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSharedVariables >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSharedVariables >> stopPosition: anObject [
	stopPosition := anObject
]
