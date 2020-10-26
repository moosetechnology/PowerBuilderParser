Class {
	#name : #MrlPWBASTArguments,
	#superclass : #Object,
	#instVars : [
		'arguments',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTArguments >> = anObject [
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
MrlPWBASTArguments >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTArguments: self
]

{ #category : #accessing }
MrlPWBASTArguments >> arguments [
	^ arguments
]

{ #category : #accessing }
MrlPWBASTArguments >> arguments: anObject [
	arguments := anObject
]

{ #category : #comparing }
MrlPWBASTArguments >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ arguments hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTArguments >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTArguments >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTArguments >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTArguments >> stopPosition: anObject [
	stopPosition := anObject
]
