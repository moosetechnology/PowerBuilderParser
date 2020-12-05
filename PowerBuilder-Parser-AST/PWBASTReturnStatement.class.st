Class {
	#name : #PWBASTReturnStatement,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTReturnStatement >> = anObject [
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
PWBASTReturnStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTReturnStatement: self
]

{ #category : #accessing }
PWBASTReturnStatement >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTReturnStatement >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
PWBASTReturnStatement >> expressionAction [
	^ expression expressionAction
]

{ #category : #comparing }
PWBASTReturnStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTReturnStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTReturnStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTReturnStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTReturnStatement >> stopPosition: anObject [
	stopPosition := anObject
]
