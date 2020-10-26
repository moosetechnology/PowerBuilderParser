Class {
	#name : #PWBASTArray,
	#superclass : #Object,
	#instVars : [
		'expressions',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTArray >> = anObject [
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
PWBASTArray >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArray: self
]

{ #category : #accessing }
PWBASTArray >> expressions [
	^ expressions
]

{ #category : #accessing }
PWBASTArray >> expressions: anObject [
	expressions := anObject
]

{ #category : #comparing }
PWBASTArray >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expressions hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTArray >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTArray >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTArray >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTArray >> stopPosition: anObject [
	stopPosition := anObject
]
