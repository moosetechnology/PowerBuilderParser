Class {
	#name : #MrlPWBASTEventLong,
	#superclass : #Object,
	#instVars : [
		'functionArgument',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTEventLong >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ functionArgument = anObject functionArgument
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTEventLong >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTEventLong: self
]

{ #category : #accessing }
MrlPWBASTEventLong >> functionArgument [
	^ functionArgument
]

{ #category : #accessing }
MrlPWBASTEventLong >> functionArgument: anObject [
	functionArgument := anObject
]

{ #category : #comparing }
MrlPWBASTEventLong >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ functionArgument hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTEventLong >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTEventLong >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTEventLong >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTEventLong >> stopPosition: anObject [
	stopPosition := anObject
]
