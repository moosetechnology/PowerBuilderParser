Class {
	#name : #MrlPWBASTNumber,
	#superclass : #Object,
	#instVars : [
		'number',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTNumber >> = anObject [
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
MrlPWBASTNumber >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTNumber: self
]

{ #category : #comparing }
MrlPWBASTNumber >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ number hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTNumber >> number [
	^ number
]

{ #category : #accessing }
MrlPWBASTNumber >> number: anObject [
	number := anObject
]

{ #category : #accessing }
MrlPWBASTNumber >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTNumber >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTNumber >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTNumber >> stopPosition: anObject [
	stopPosition := anObject
]
