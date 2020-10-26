Class {
	#name : #PWBASTArguments,
	#superclass : #Object,
	#instVars : [
		'arguments',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTArguments >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ arguments = anObject arguments
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTArguments >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArguments: self
]

{ #category : #accessing }
PWBASTArguments >> arguments [
	^ arguments
]

{ #category : #accessing }
PWBASTArguments >> arguments: anObject [
	arguments := anObject
]

{ #category : #comparing }
PWBASTArguments >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ arguments hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTArguments >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTArguments >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTArguments >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTArguments >> stopPosition: anObject [
	stopPosition := anObject
]
