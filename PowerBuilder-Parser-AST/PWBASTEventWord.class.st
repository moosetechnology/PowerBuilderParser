Class {
	#name : #PWBASTEventWord,
	#superclass : #Object,
	#instVars : [
		'functionArgument',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTEventWord >> = anObject [
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
PWBASTEventWord >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEventWord: self
]

{ #category : #accessing }
PWBASTEventWord >> functionArgument [
	^ functionArgument
]

{ #category : #accessing }
PWBASTEventWord >> functionArgument: anObject [
	functionArgument := anObject
]

{ #category : #comparing }
PWBASTEventWord >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ functionArgument hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTEventWord >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTEventWord >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTEventWord >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTEventWord >> stopPosition: anObject [
	stopPosition := anObject
]
