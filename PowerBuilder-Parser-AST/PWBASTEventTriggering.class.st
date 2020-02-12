Class {
	#name : #PWBASTEventTriggering,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'functionArguments',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTEventTriggering >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ identifier = anObject identifier
		and: [ functionArguments = anObject functionArguments
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTEventTriggering >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEventTriggering: self
]

{ #category : #accessing }
PWBASTEventTriggering >> functionArguments [
	^ functionArguments
]

{ #category : #accessing }
PWBASTEventTriggering >> functionArguments: anObject [
	functionArguments := anObject
]

{ #category : #comparing }
PWBASTEventTriggering >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor:
			(functionArguments hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTEventTriggering >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTEventTriggering >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTEventTriggering >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTEventTriggering >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTEventTriggering >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTEventTriggering >> stopPosition: anObject [
	stopPosition := anObject
]
