Class {
	#name : #MrlPWBASTEventType,
	#superclass : #Object,
	#instVars : [
		'eventType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTEventType >> = anObject [
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
MrlPWBASTEventType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTEventType: self
]

{ #category : #accessing }
MrlPWBASTEventType >> eventType [
	^ eventType
]

{ #category : #accessing }
MrlPWBASTEventType >> eventType: anObject [
	eventType := anObject
]

{ #category : #comparing }
MrlPWBASTEventType >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ eventType hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTEventType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTEventType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTEventType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTEventType >> stopPosition: anObject [
	stopPosition := anObject
]
