Class {
	#name : #PWBASTMrlMethodInvocation,
	#superclass : #Object,
	#instVars : [
		'expressionTerm',
		'expressionAction',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTMrlMethodInvocation >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expressionTerm = anObject expressionTerm
		and: [ expressionAction = anObject expressionAction
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTMrlMethodInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTMrlMethodInvocation: self
]

{ #category : #accessing }
PWBASTMrlMethodInvocation >> expressionAction [
	^ expressionAction
]

{ #category : #accessing }
PWBASTMrlMethodInvocation >> expressionAction: aPWBASTExpressionAction [ 
	expressionAction := aPWBASTExpressionAction
]

{ #category : #accessing }
PWBASTMrlMethodInvocation >> expressionTerm [
	^ expressionTerm
]

{ #category : #accessing }
PWBASTMrlMethodInvocation >> expressionTerm: aPWBASTExpressionTerm [ 
	expressionTerm := aPWBASTExpressionTerm
]

{ #category : #comparing }
PWBASTMrlMethodInvocation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expressionTerm hash
		bitXor:
			(expressionAction hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTMrlMethodInvocation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTMrlMethodInvocation >> startPosition: anInteger [ 
	startPosition := anInteger
]

{ #category : #accessing }
PWBASTMrlMethodInvocation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTMrlMethodInvocation >> stopPosition: anInteger [ 
	stopPosition := anInteger
]
