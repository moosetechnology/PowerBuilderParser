Class {
	#name : #MrlPWBASTParenthesedArray,
	#superclass : #Object,
	#instVars : [
		'expression',
		'expressions',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTParenthesedArray >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expression = anObject expression
		and: [ expressions = anObject expressions
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
MrlPWBASTParenthesedArray >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTParenthesedArray: self
]

{ #category : #accessing }
MrlPWBASTParenthesedArray >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTParenthesedArray >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
MrlPWBASTParenthesedArray >> expressions [
	^ expressions
]

{ #category : #accessing }
MrlPWBASTParenthesedArray >> expressions: anObject [
	expressions := anObject
]

{ #category : #comparing }
MrlPWBASTParenthesedArray >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor:
			(expressions hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTParenthesedArray >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTParenthesedArray >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTParenthesedArray >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTParenthesedArray >> stopPosition: anObject [
	stopPosition := anObject
]
