Class {
	#name : #MrlPWBASTDestroyStatement,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTDestroyStatement >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expression = anObject expression
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTDestroyStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTDestroyStatement: self
]

{ #category : #accessing }
MrlPWBASTDestroyStatement >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTDestroyStatement >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
MrlPWBASTDestroyStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTDestroyStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTDestroyStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTDestroyStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTDestroyStatement >> stopPosition: anObject [
	stopPosition := anObject
]
