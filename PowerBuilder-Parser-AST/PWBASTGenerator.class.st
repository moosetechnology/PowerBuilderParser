Class {
	#name : #PWBASTGenerator,
	#superclass : #Object,
	#instVars : [
		'generatorToken',
		'parameters',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTGenerator >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ generatorToken = anObject generatorToken
		and: [ parameters = anObject parameters
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTGenerator >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTGenerator: self
]

{ #category : #accessing }
PWBASTGenerator >> generatorToken [
	^ generatorToken
]

{ #category : #accessing }
PWBASTGenerator >> generatorToken: anObject [
	generatorToken := anObject
]

{ #category : #comparing }
PWBASTGenerator >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ generatorToken hash
		bitXor:
			(parameters hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTGenerator >> parameters [
	^ parameters
]

{ #category : #accessing }
PWBASTGenerator >> parameters: anObject [
	parameters := anObject
]

{ #category : #accessing }
PWBASTGenerator >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTGenerator >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTGenerator >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTGenerator >> stopPosition: anObject [
	stopPosition := anObject
]
