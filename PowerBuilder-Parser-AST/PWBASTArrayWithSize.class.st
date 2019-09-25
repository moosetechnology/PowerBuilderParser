Class {
	#name : #PWBASTArrayWithSize,
	#superclass : #Object,
	#instVars : [
		'expressions',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTArrayWithSize >> = anObject [
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
PWBASTArrayWithSize >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArrayWithSize: self
]

{ #category : #accessing }
PWBASTArrayWithSize >> expressions [
	^ expressions
]

{ #category : #accessing }
PWBASTArrayWithSize >> expressions: anObject [
	expressions := anObject
]

{ #category : #comparing }
PWBASTArrayWithSize >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expressions hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTArrayWithSize >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTArrayWithSize >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTArrayWithSize >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTArrayWithSize >> stopPosition: anObject [
	stopPosition := anObject
]
