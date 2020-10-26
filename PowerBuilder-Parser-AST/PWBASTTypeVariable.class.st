Class {
	#name : #PWBASTTypeVariable,
	#superclass : #Object,
	#instVars : [
		'attributes',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTTypeVariable >> = anObject [
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
PWBASTTypeVariable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTTypeVariable: self
]

{ #category : #accessing }
PWBASTTypeVariable >> attributes [
	^ attributes
]

{ #category : #accessing }
PWBASTTypeVariable >> attributes: anObject [
	attributes := anObject
]

{ #category : #comparing }
PWBASTTypeVariable >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ attributes hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTTypeVariable >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTTypeVariable >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTTypeVariable >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTTypeVariable >> stopPosition: anObject [
	stopPosition := anObject
]
