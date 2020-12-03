Class {
	#name : #MrlPWBASTArray,
	#superclass : #Object,
	#instVars : [
		'expressions',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTArray >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expressions = anObject expressions
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #accessing }
MrlPWBASTArray >> expressions [
	^ expressions
]

{ #category : #accessing }
MrlPWBASTArray >> expressions: anObject [
	expressions := anObject
]

{ #category : #comparing }
MrlPWBASTArray >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expressions hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTArray >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTArray >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTArray >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTArray >> stopPosition: anObject [
	stopPosition := anObject
]
