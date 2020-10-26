Class {
	#name : #MrlPWBASTEventName,
	#superclass : #Object,
	#instVars : [
		'eventName',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTEventName >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ eventName = anObject eventName
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTEventName >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTEventName: self
]

{ #category : #accessing }
MrlPWBASTEventName >> eventName [
	^ eventName
]

{ #category : #accessing }
MrlPWBASTEventName >> eventName: anObject [
	eventName := anObject
]

{ #category : #comparing }
MrlPWBASTEventName >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ eventName hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTEventName >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTEventName >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTEventName >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTEventName >> stopPosition: anObject [
	stopPosition := anObject
]
