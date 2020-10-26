Class {
	#name : #MrlPWBASTOppositeFullInvocation,
	#superclass : #Object,
	#instVars : [
		'oppositeFullInvocation',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTOppositeFullInvocation >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ oppositeFullInvocation = anObject oppositeFullInvocation
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTOppositeFullInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTOppositeFullInvocation: self
]

{ #category : #comparing }
MrlPWBASTOppositeFullInvocation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ oppositeFullInvocation hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTOppositeFullInvocation >> oppositeFullInvocation [
	^ oppositeFullInvocation
]

{ #category : #accessing }
MrlPWBASTOppositeFullInvocation >> oppositeFullInvocation: anObject [
	oppositeFullInvocation := anObject
]

{ #category : #accessing }
MrlPWBASTOppositeFullInvocation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTOppositeFullInvocation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTOppositeFullInvocation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTOppositeFullInvocation >> stopPosition: anObject [
	stopPosition := anObject
]
