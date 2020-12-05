Class {
	#name : #PWBASTAttributes,
	#superclass : #Object,
	#instVars : [
		'attributes',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTAttributes >> = anObject [
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
PWBASTAttributes >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAttributes: self
]

{ #category : #accessing }
PWBASTAttributes >> attributes [
	^ attributes
]

{ #category : #accessing }
PWBASTAttributes >> attributes: anObject [
	attributes := anObject
]

{ #category : #comparing }
PWBASTAttributes >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ attributes hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTAttributes >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTAttributes >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTAttributes >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTAttributes >> stopPosition: anObject [
	stopPosition := anObject
]
