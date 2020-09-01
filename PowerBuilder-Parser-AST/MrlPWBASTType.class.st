Class {
	#name : #MrlPWBASTType,
	#superclass : #Object,
	#instVars : [
		'type',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTType >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ type = anObject type
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTType: self
]

{ #category : #comparing }
MrlPWBASTType >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ type hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTType >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTType >> type [
	^ type
]

{ #category : #accessing }
MrlPWBASTType >> type: anObject [
	type := anObject
]
