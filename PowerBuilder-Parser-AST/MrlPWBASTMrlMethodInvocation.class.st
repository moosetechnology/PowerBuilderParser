Class {
	#name : #MrlPWBASTMrlMethodInvocation,
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
MrlPWBASTMrlMethodInvocation >> = anObject [
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
MrlPWBASTMrlMethodInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTMrlMethodInvocation: self
]

{ #category : #accessing }
MrlPWBASTMrlMethodInvocation >> expressionAction [
	^ expressionAction
]

{ #category : #accessing }
MrlPWBASTMrlMethodInvocation >> expressionAction: anObject [
	expressionAction := anObject
]

{ #category : #accessing }
MrlPWBASTMrlMethodInvocation >> expressionTerm [
	^ expressionTerm
]

{ #category : #accessing }
MrlPWBASTMrlMethodInvocation >> expressionTerm: anObject [
	expressionTerm := anObject
]

{ #category : #comparing }
MrlPWBASTMrlMethodInvocation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expressionTerm hash
		bitXor:
			(expressionAction hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTMrlMethodInvocation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTMrlMethodInvocation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTMrlMethodInvocation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTMrlMethodInvocation >> stopPosition: anObject [
	stopPosition := anObject
]
