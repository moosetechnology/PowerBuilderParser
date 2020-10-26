Class {
	#name : #PWBASTEventInvocation,
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
PWBASTEventInvocation >> = anObject [
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
PWBASTEventInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEventInvocation: self
]

{ #category : #accessing }
PWBASTEventInvocation >> arguments [
	^ arguments
]

{ #category : #accessing }
PWBASTEventInvocation >> arguments: anObject [
	arguments := anObject
]

{ #category : #accessing }
PWBASTEventInvocation >> functionArguments [
	^ functionArguments
]

{ #category : #accessing }
PWBASTEventInvocation >> functionArguments: anObject [
	functionArguments := anObject
]

{ #category : #comparing }
PWBASTEventInvocation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor:
			(functionArguments hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTEventInvocation >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTEventInvocation >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTEventInvocation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTEventInvocation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTEventInvocation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTEventInvocation >> stopPosition: anObject [
	stopPosition := anObject
]
