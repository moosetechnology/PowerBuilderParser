Class {
	#name : #PWBASTOppositeFullInvocation,
	#superclass : #Object,
	#instVars : [
		'oppositeFullInvocation',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTOppositeFullInvocation >> = anObject [
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
PWBASTOppositeFullInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTOppositeFullInvocation: self
]

{ #category : #comparing }
PWBASTOppositeFullInvocation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ oppositeFullInvocation hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTOppositeFullInvocation >> oppositeFullInvocation [
	^ oppositeFullInvocation
]

{ #category : #accessing }
PWBASTOppositeFullInvocation >> oppositeFullInvocation: anObject [
	oppositeFullInvocation := anObject
]

{ #category : #accessing }
PWBASTOppositeFullInvocation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTOppositeFullInvocation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTOppositeFullInvocation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTOppositeFullInvocation >> stopPosition: anObject [
	stopPosition := anObject
]
