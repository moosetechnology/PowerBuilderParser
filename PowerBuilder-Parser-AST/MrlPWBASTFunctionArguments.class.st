Class {
	#name : #MrlPWBASTFunctionArguments,
	#superclass : #Object,
	#instVars : [
		'functionArguments',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTFunctionArguments >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ functionArguments = anObject functionArguments
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTFunctionArguments >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTFunctionArguments: self
]

{ #category : #accessing }
MrlPWBASTFunctionArguments >> functionArguments [
	^ functionArguments
]

{ #category : #accessing }
MrlPWBASTFunctionArguments >> functionArguments: anObject [
	functionArguments := anObject
]

{ #category : #comparing }
MrlPWBASTFunctionArguments >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ functionArguments hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTFunctionArguments >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTFunctionArguments >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTFunctionArguments >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTFunctionArguments >> stopPosition: anObject [
	stopPosition := anObject
]
