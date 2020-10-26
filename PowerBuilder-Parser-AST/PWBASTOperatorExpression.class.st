Class {
	#name : #PWBASTOperatorExpression,
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
PWBASTOperatorExpression >> = anObject [
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
PWBASTOperatorExpression >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTOperatorExpression: self
]

{ #category : #accessing }
PWBASTOperatorExpression >> expressionAction [
	^ expressionAction
]

{ #category : #accessing }
PWBASTOperatorExpression >> expressionAction: anObject [
	expressionAction := anObject
]

{ #category : #comparing }
PWBASTOperatorExpression >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ left hash
		bitXor:
			(expressionAction hash
				bitXor: (right hash bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
PWBASTOperatorExpression >> left [
	^ left
]

{ #category : #accessing }
PWBASTOperatorExpression >> left: anObject [
	left := anObject
]

{ #category : #accessing }
PWBASTOperatorExpression >> methodInvocations [
	^ methodInvocations
]

{ #category : #accessing }
PWBASTOperatorExpression >> methodInvocations: anObject [
	methodInvocations := anObject
]

{ #category : #accessing }
PWBASTOperatorExpression >> right [
	^ right
]

{ #category : #accessing }
PWBASTOperatorExpression >> right: anObject [
	right := anObject
]

{ #category : #accessing }
PWBASTOperatorExpression >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTOperatorExpression >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTOperatorExpression >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTOperatorExpression >> stopPosition: anObject [
	stopPosition := anObject
]
