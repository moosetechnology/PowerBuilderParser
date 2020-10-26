Class {
	#name : #PWBASTExpressionAction,
	#superclass : #Object,
	#instVars : [
		'action',
		'expressionAction',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTExpressionAction >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ action = anObject action
		and: [ expressionAction = anObject expressionAction
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTExpressionAction >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTExpressionAction: self
]

{ #category : #accessing }
PWBASTExpressionAction >> action [
	^ action
]

{ #category : #accessing }
PWBASTExpressionAction >> action: anObject [
	action := anObject
]

{ #category : #accessing }
PWBASTExpressionAction >> expressionAction [
	^ expressionAction
]

{ #category : #accessing }
PWBASTExpressionAction >> expressionAction: anObject [
	expressionAction := anObject
]

{ #category : #comparing }
PWBASTExpressionAction >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ action hash
		bitXor:
			(expressionAction hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #testing }
PWBASTExpressionAction >> isAttributeAccess [
	self flag: 'refactor #isKindOf:'.
	^self action isKindOf: PWBASTAttributeAccess 
]

{ #category : #accessing }
PWBASTExpressionAction >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTExpressionAction >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTExpressionAction >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTExpressionAction >> stopPosition: anObject [
	stopPosition := anObject
]
