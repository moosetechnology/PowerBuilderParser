Class {
	#name : #PWBASTEventName,
	#superclass : #Object,
	#instVars : [
		'eventName',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTEventName >> = anObject [
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
PWBASTEventName >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEventName: self
]

{ #category : #accessing }
PWBASTEventName >> eventName [
	^ eventName
]

{ #category : #accessing }
PWBASTEventName >> eventName: anObject [
	eventName := anObject
]

{ #category : #accessing }
PWBASTEventName >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTEventName >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTEventName >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ eventName hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTEventName >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTEventName >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTEventName >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTEventName >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #printing }
PWBASTEventName >> toString [
	^ self eventName toString
]
