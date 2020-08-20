Class {
	#name : #MrlPWBASTFullInvocation,
	#superclass : #Object,
	#instVars : [
		'fullInvocation',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTFullInvocation >> = anObject [
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
MrlPWBASTFullInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTFullInvocation: self
]

{ #category : #accessing }
MrlPWBASTFullInvocation >> fullInvocation [
	^ fullInvocation
]

{ #category : #accessing }
MrlPWBASTFullInvocation >> fullInvocation: anObject [
	fullInvocation := anObject
]

{ #category : #comparing }
MrlPWBASTFullInvocation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ fullInvocation hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTFullInvocation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTFullInvocation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTFullInvocation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTFullInvocation >> stopPosition: anObject [
	stopPosition := anObject
]
