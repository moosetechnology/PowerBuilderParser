Class {
	#name : #PWBASTPostEvent,
	#superclass : #Object,
	#instVars : [
		'postEvent',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTPostEvent >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ postEvent = anObject postEvent
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTPostEvent >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTPostEvent: self
]

{ #category : #comparing }
PWBASTPostEvent >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ postEvent hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTPostEvent >> postEvent [
	^ postEvent
]

{ #category : #accessing }
PWBASTPostEvent >> postEvent: anObject [
	postEvent := anObject
]

{ #category : #accessing }
PWBASTPostEvent >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTPostEvent >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTPostEvent >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTPostEvent >> stopPosition: anObject [
	stopPosition := anObject
]
