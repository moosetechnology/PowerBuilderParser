Class {
	#name : #PWBASTCondition,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTCondition >> = anObject [
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
PWBASTCondition >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCondition: self
]

{ #category : #accessing }
PWBASTCondition >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTCondition >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTCondition >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTCondition >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCondition >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCondition >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCondition >> stopPosition: anObject [
	stopPosition := anObject
]
