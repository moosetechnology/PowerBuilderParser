Class {
	#name : #MrlPWBASTExpressionAction,
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
MrlPWBASTExpressionAction >> = anObject [
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
MrlPWBASTExpressionAction >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTExpressionAction: self
]

{ #category : #accessing }
MrlPWBASTExpressionAction >> action [
	^ action
]

{ #category : #accessing }
MrlPWBASTExpressionAction >> action: anObject [
	action := anObject
]

{ #category : #accessing }
MrlPWBASTExpressionAction >> expressionAction [
	^ expressionAction
]

{ #category : #accessing }
MrlPWBASTExpressionAction >> expressionAction: anObject [
	expressionAction := anObject
]

{ #category : #comparing }
MrlPWBASTExpressionAction >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ action hash
		bitXor:
			(expressionAction hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #testing }
MrlPWBASTExpressionAction >> isAttributeAccess [
	self flag: 'refactor #isKindOf:'.
	^self action isKindOf: PWBASTAttributeAccess 
]

{ #category : #accessing }
MrlPWBASTExpressionAction >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTExpressionAction >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTExpressionAction >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTExpressionAction >> stopPosition: anObject [
	stopPosition := anObject
]
