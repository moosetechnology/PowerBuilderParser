Class {
	#name : #PWBASTColumnTypeOption,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTColumnTypeOption >> = anObject [
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
PWBASTColumnTypeOption >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTColumnTypeOption: self
]

{ #category : #accessing }
PWBASTColumnTypeOption >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTColumnTypeOption >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTColumnTypeOption >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTColumnTypeOption >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTColumnTypeOption >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTColumnTypeOption >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTColumnTypeOption >> stopPosition: anObject [
	stopPosition := anObject
]
