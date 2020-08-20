Class {
	#name : #MrlPWBASTExpression,
	#superclass : #Object,
	#instVars : [
		'expression',
		'expressionAction',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTExpression >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expression = anObject expression
		and: [ expressionAction = anObject expressionAction
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
MrlPWBASTExpression >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTExpression: self
]

{ #category : #accessing }
MrlPWBASTExpression >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTExpression >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
MrlPWBASTExpression >> expressionAction [
	^ expressionAction
]

{ #category : #accessing }
MrlPWBASTExpression >> expressionAction: anObject [
	expressionAction := anObject
]

{ #category : #comparing }
MrlPWBASTExpression >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor:
			(expressionAction hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTExpression >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTExpression >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTExpression >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTExpression >> stopPosition: anObject [
	stopPosition := anObject
]
