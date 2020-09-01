Class {
	#name : #MrlPWBASTEventWord,
	#superclass : #Object,
	#instVars : [
		'functionArgument',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTEventWord >> = anObject [
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
MrlPWBASTEventWord >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTEventWord: self
]

{ #category : #accessing }
MrlPWBASTEventWord >> functionArgument [
	^ functionArgument
]

{ #category : #accessing }
MrlPWBASTEventWord >> functionArgument: anObject [
	functionArgument := anObject
]

{ #category : #comparing }
MrlPWBASTEventWord >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ functionArgument hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTEventWord >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTEventWord >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTEventWord >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTEventWord >> stopPosition: anObject [
	stopPosition := anObject
]
