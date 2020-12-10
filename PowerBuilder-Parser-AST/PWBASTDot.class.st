Class {
	#name : #PWBASTDot,
	#superclass : #Object,
	#instVars : [
		'dot',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTDot >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ dot = anObject dot
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTDot >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDot: self
]

{ #category : #accessing }
PWBASTDot >> dot [
	^ dot
]

{ #category : #accessing }
PWBASTDot >> dot: anObject [
	dot := anObject
]

{ #category : #comparing }
PWBASTDot >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ dot hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTDot >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDot >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDot >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDot >> stopPosition: anObject [
	stopPosition := anObject
]
