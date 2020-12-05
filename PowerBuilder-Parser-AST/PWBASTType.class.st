Class {
	#name : #PWBASTType,
	#superclass : #Object,
	#instVars : [
		'type',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTType >> = anObject [
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
PWBASTType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTType: self
]

{ #category : #comparing }
PWBASTType >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ type hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTType >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTType >> type [
	^ type
]

{ #category : #accessing }
PWBASTType >> type: anObject [
	type := anObject
]
