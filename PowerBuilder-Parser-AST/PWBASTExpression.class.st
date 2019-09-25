Class {
	#name : #PWBASTExpression,
	#superclass : #Object,
	#instVars : [
		'expression',
		'methodInvocations',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTExpression >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expression = anObject expression
		and: [ methodInvocations = anObject methodInvocations
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTExpression >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTExpression: self
]

{ #category : #accessing }
PWBASTExpression >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTExpression >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTExpression >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor:
			(methodInvocations hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTExpression >> methodInvocations [
	^ methodInvocations
]

{ #category : #accessing }
PWBASTExpression >> methodInvocations: anObject [
	methodInvocations := anObject
]

{ #category : #accessing }
PWBASTExpression >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTExpression >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTExpression >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTExpression >> stopPosition: anObject [
	stopPosition := anObject
]
