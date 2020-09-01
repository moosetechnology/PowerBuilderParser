Class {
	#name : #PWBASTFullInvocation,
	#superclass : #Object,
	#instVars : [
		'fullInvocation',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTFullInvocation >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ fullInvocation = anObject fullInvocation
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTFullInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFullInvocation: self
]

{ #category : #accessing }
PWBASTFullInvocation >> fullInvocation [
	^ fullInvocation
]

{ #category : #accessing }
PWBASTFullInvocation >> fullInvocation: anObject [
	fullInvocation := anObject
]

{ #category : #comparing }
PWBASTFullInvocation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ fullInvocation hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTFullInvocation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTFullInvocation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTFullInvocation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTFullInvocation >> stopPosition: anObject [
	stopPosition := anObject
]
