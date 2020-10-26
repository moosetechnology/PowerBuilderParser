Class {
	#name : #PWBASTGeneratorToken,
	#superclass : #Object,
	#instVars : [
		'generatorToken',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTGeneratorToken >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ generatorToken = anObject generatorToken
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTGeneratorToken >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTGeneratorToken: self
]

{ #category : #accessing }
PWBASTGeneratorToken >> generatorToken [
	^ generatorToken
]

{ #category : #accessing }
PWBASTGeneratorToken >> generatorToken: anObject [
	generatorToken := anObject
]

{ #category : #comparing }
PWBASTGeneratorToken >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ generatorToken hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTGeneratorToken >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTGeneratorToken >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTGeneratorToken >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTGeneratorToken >> stopPosition: anObject [
	stopPosition := anObject
]
