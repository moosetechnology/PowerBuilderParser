Class {
	#name : #PWBASTMethodInvocation,
	#superclass : #Object,
	#instVars : [
		'methodInvocation',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTMethodInvocation >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ methodInvocation = anObject methodInvocation
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTMethodInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTMethodInvocation: self
]

{ #category : #comparing }
PWBASTMethodInvocation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ methodInvocation hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTMethodInvocation >> methodInvocation [
	^ methodInvocation
]

{ #category : #accessing }
PWBASTMethodInvocation >> methodInvocation: anObject [
	methodInvocation := anObject
]

{ #category : #accessing }
PWBASTMethodInvocation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTMethodInvocation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTMethodInvocation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTMethodInvocation >> stopPosition: anObject [
	stopPosition := anObject
]
