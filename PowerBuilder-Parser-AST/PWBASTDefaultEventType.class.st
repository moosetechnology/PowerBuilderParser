Class {
	#name : #PWBASTDefaultEventType,
	#superclass : #Object,
	#instVars : [
		'defaultEventType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTDefaultEventType >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ defaultEventType = anObject defaultEventType
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTDefaultEventType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDefaultEventType: self
]

{ #category : #accessing }
PWBASTDefaultEventType >> defaultEventType [
	^ defaultEventType
]

{ #category : #accessing }
PWBASTDefaultEventType >> defaultEventType: anObject [
	defaultEventType := anObject
]

{ #category : #comparing }
PWBASTDefaultEventType >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ defaultEventType hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTDefaultEventType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDefaultEventType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDefaultEventType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDefaultEventType >> stopPosition: anObject [
	stopPosition := anObject
]
