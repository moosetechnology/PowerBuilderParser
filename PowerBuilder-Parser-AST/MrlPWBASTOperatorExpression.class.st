Class {
	#name : #MrlPWBASTOperatorExpression,
	#superclass : #Object,
	#instVars : [
		'left',
		'expressionAction',
		'right',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTOperatorExpression >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ left = anObject left
		and: [ expressionAction = anObject expressionAction
				and: [ right = anObject right
						and: [ startPosition = anObject startPosition
								and: [ stopPosition = anObject stopPosition ] ] ] ]
]

{ #category : #visiting }
MrlPWBASTOperatorExpression >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTOperatorExpression: self
]

{ #category : #accessing }
MrlPWBASTOperatorExpression >> expressionAction [
	^ expressionAction
]

{ #category : #accessing }
MrlPWBASTOperatorExpression >> expressionAction: anObject [
	expressionAction := anObject
]

{ #category : #comparing }
MrlPWBASTOperatorExpression >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ left hash
		bitXor:
			(expressionAction hash
				bitXor: (right hash bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
MrlPWBASTOperatorExpression >> left [
	^ left
]

{ #category : #accessing }
MrlPWBASTOperatorExpression >> left: anObject [
	left := anObject
]

{ #category : #accessing }
MrlPWBASTOperatorExpression >> right [
	^ right
]

{ #category : #accessing }
MrlPWBASTOperatorExpression >> right: anObject [
	right := anObject
]

{ #category : #accessing }
MrlPWBASTOperatorExpression >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTOperatorExpression >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTOperatorExpression >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTOperatorExpression >> stopPosition: anObject [
	stopPosition := anObject
]
