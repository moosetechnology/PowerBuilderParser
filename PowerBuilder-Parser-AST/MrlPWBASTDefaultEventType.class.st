Class {
	#name : #MrlPWBASTDefaultEventType,
	#superclass : #Object,
	#instVars : [
		'defaultEventType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTDefaultEventType >> = anObject [
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
MrlPWBASTDefaultEventType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTDefaultEventType: self
]

{ #category : #accessing }
MrlPWBASTDefaultEventType >> defaultEventType [
	^ defaultEventType
]

{ #category : #accessing }
MrlPWBASTDefaultEventType >> defaultEventType: anObject [
	defaultEventType := anObject
]

{ #category : #comparing }
MrlPWBASTDefaultEventType >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ defaultEventType hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTDefaultEventType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTDefaultEventType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTDefaultEventType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTDefaultEventType >> stopPosition: anObject [
	stopPosition := anObject
]
