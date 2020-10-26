Class {
	#name : #PWBASTColumnNameOption,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTColumnNameOption >> = anObject [
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
PWBASTColumnNameOption >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTColumnNameOption: self
]

{ #category : #accessing }
PWBASTColumnNameOption >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTColumnNameOption >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTColumnNameOption >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTColumnNameOption >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTColumnNameOption >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTColumnNameOption >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTColumnNameOption >> stopPosition: anObject [
	stopPosition := anObject
]
