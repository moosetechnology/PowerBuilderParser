Class {
	#name : #MrlPWBASTBooleanValue,
	#superclass : #Object,
	#instVars : [
		'booleanValue',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTBooleanValue >> = anObject [
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
MrlPWBASTBooleanValue >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTBooleanValue: self
]

{ #category : #accessing }
MrlPWBASTBooleanValue >> booleanValue [
	^ booleanValue
]

{ #category : #accessing }
MrlPWBASTBooleanValue >> booleanValue: anObject [
	booleanValue := anObject
]

{ #category : #comparing }
MrlPWBASTBooleanValue >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ booleanValue hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTBooleanValue >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTBooleanValue >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTBooleanValue >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTBooleanValue >> stopPosition: anObject [
	stopPosition := anObject
]
