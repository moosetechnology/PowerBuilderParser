Class {
	#name : #PWBASTEventType,
	#superclass : #Object,
	#instVars : [
		'eventType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTEventType >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ eventType = anObject eventType
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTEventType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEventType: self
]

{ #category : #accessing }
PWBASTEventType >> eventType [
	^ eventType
]

{ #category : #accessing }
PWBASTEventType >> eventType: anObject [
	eventType := anObject
]

{ #category : #comparing }
PWBASTEventType >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ eventType hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTEventType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTEventType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTEventType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTEventType >> stopPosition: anObject [
	stopPosition := anObject
]
