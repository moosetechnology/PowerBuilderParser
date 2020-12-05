Class {
	#name : #PWBASTBooleanValue,
	#superclass : #Object,
	#instVars : [
		'booleanValue',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTBooleanValue >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ booleanValue = anObject booleanValue
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTBooleanValue >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTBooleanValue: self
]

{ #category : #accessing }
PWBASTBooleanValue >> booleanValue [
	^ booleanValue
]

{ #category : #accessing }
PWBASTBooleanValue >> booleanValue: anObject [
	booleanValue := anObject
]

{ #category : #comparing }
PWBASTBooleanValue >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ booleanValue hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTBooleanValue >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTBooleanValue >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTBooleanValue >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTBooleanValue >> stopPosition: anObject [
	stopPosition := anObject
]
