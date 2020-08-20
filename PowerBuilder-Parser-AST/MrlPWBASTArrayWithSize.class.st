Class {
	#name : #MrlPWBASTArrayWithSize,
	#superclass : #Object,
	#instVars : [
		'expressions',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTArrayWithSize >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expressions = anObject expressions
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTArrayWithSize >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTArrayWithSize: self
]

{ #category : #accessing }
MrlPWBASTArrayWithSize >> expressions [
	^ expressions
]

{ #category : #accessing }
MrlPWBASTArrayWithSize >> expressions: anObject [
	expressions := anObject
]

{ #category : #comparing }
MrlPWBASTArrayWithSize >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expressions hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTArrayWithSize >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTArrayWithSize >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTArrayWithSize >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTArrayWithSize >> stopPosition: anObject [
	stopPosition := anObject
]
