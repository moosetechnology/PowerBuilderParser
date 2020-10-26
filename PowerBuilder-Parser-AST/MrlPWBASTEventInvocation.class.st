Class {
	#name : #MrlPWBASTEventInvocation,
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
MrlPWBASTEventInvocation >> = anObject [
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
MrlPWBASTEventInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTEventInvocation: self
]

{ #category : #accessing }
MrlPWBASTEventInvocation >> functionArguments [
	^ functionArguments
]

{ #category : #accessing }
MrlPWBASTEventInvocation >> functionArguments: anObject [
	functionArguments := anObject
]

{ #category : #comparing }
MrlPWBASTEventInvocation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor:
			(functionArguments hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTEventInvocation >> identifier [
	^ identifier
]

{ #category : #accessing }
MrlPWBASTEventInvocation >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
MrlPWBASTEventInvocation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTEventInvocation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTEventInvocation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTEventInvocation >> stopPosition: anObject [
	stopPosition := anObject
]
