Class {
	#name : #PWBASTTriggerEvent,
	#superclass : #Object,
	#instVars : [
		'triggerEvent',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTTriggerEvent >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ triggerEvent = anObject triggerEvent
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTTriggerEvent >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTTriggerEvent: self
]

{ #category : #comparing }
PWBASTTriggerEvent >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ triggerEvent hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTTriggerEvent >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTTriggerEvent >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTTriggerEvent >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTTriggerEvent >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTTriggerEvent >> triggerEvent [
	^ triggerEvent
]

{ #category : #accessing }
PWBASTTriggerEvent >> triggerEvent1: anObject [
	triggerEvent := anObject
]
