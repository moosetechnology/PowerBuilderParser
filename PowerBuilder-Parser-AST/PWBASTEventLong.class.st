Class {
	#name : #PWBASTEventLong,
	#superclass : #Object,
	#instVars : [
		'functionArgument',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTEventLong >> = anObject [
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
PWBASTEventLong >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEventLong: self
]

{ #category : #accessing }
PWBASTEventLong >> functionArgument [
	^ functionArgument
]

{ #category : #accessing }
PWBASTEventLong >> functionArgument: anObject [
	functionArgument := anObject
]

{ #category : #comparing }
PWBASTEventLong >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ functionArgument hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTEventLong >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTEventLong >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTEventLong >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTEventLong >> stopPosition: anObject [
	stopPosition := anObject
]
