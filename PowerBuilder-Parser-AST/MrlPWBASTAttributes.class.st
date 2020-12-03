Class {
	#name : #MrlPWBASTAttributes,
	#superclass : #Object,
	#instVars : [
		'attributes',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTAttributes >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ attributes = anObject attributes
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #accessing }
MrlPWBASTAttributes >> attributes [
	^ attributes
]

{ #category : #accessing }
MrlPWBASTAttributes >> attributes: anObject [
	attributes := anObject
]

{ #category : #comparing }
MrlPWBASTAttributes >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ attributes hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTAttributes >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTAttributes >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTAttributes >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTAttributes >> stopPosition: anObject [
	stopPosition := anObject
]
