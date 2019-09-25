Class {
	#name : #PWBASTNumber,
	#superclass : #Object,
	#instVars : [
		'number',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTNumber >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ number = anObject number
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTNumber >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTNumber: self
]

{ #category : #comparing }
PWBASTNumber >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ number hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTNumber >> number [
	^ number
]

{ #category : #accessing }
PWBASTNumber >> number: anObject [
	number := anObject
]

{ #category : #accessing }
PWBASTNumber >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTNumber >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTNumber >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTNumber >> stopPosition: anObject [
	stopPosition := anObject
]
