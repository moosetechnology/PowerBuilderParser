Class {
	#name : #PWBASTFunctionArguments,
	#superclass : #Object,
	#instVars : [
		'functionArguments',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTFunctionArguments >> = anObject [
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
PWBASTFunctionArguments >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFunctionArguments: self
]

{ #category : #accessing }
PWBASTFunctionArguments >> functionArguments [
	^ functionArguments
]

{ #category : #accessing }
PWBASTFunctionArguments >> functionArguments: anObject [
	functionArguments := anObject
]

{ #category : #comparing }
PWBASTFunctionArguments >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ functionArguments hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTFunctionArguments >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTFunctionArguments >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTFunctionArguments >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTFunctionArguments >> stopPosition: anObject [
	stopPosition := anObject
]
