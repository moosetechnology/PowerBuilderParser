Class {
	#name : #MrlPWBASTMethodInvocation,
	#superclass : #Object,
	#instVars : [
		'methodInvocation',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTMethodInvocation >> = anObject [
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
MrlPWBASTMethodInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTMethodInvocation: self
]

{ #category : #comparing }
MrlPWBASTMethodInvocation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ methodInvocation hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTMethodInvocation >> methodInvocation [
	^ methodInvocation
]

{ #category : #accessing }
MrlPWBASTMethodInvocation >> methodInvocation: anObject [
	methodInvocation := anObject
]

{ #category : #accessing }
MrlPWBASTMethodInvocation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTMethodInvocation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTMethodInvocation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTMethodInvocation >> stopPosition: anObject [
	stopPosition := anObject
]
