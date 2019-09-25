Class {
	#name : #PWBASTParenthesedArray,
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
PWBASTParenthesedArray >> = anObject [
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
PWBASTParenthesedArray >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTParenthesedArray: self
]

{ #category : #accessing }
PWBASTParenthesedArray >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTParenthesedArray >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
PWBASTParenthesedArray >> expressions [
	^ expressions
]

{ #category : #accessing }
PWBASTParenthesedArray >> expressions: anObject [
	expressions := anObject
]

{ #category : #comparing }
PWBASTParenthesedArray >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor:
			(expressions hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTParenthesedArray >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTParenthesedArray >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTParenthesedArray >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTParenthesedArray >> stopPosition: anObject [
	stopPosition := anObject
]
