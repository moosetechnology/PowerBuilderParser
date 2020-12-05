Class {
	#name : #PWBASTIntervalExpression,
	#superclass : #Object,
	#instVars : [
		'from',
		'to',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTIntervalExpression >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ from = anObject from
		and: [ to = anObject to
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTIntervalExpression >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTIntervalExpression: self
]

{ #category : #accessing }
PWBASTIntervalExpression >> from [
	^ from
]

{ #category : #accessing }
PWBASTIntervalExpression >> from: anObject [
	from := anObject
]

{ #category : #comparing }
PWBASTIntervalExpression >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ from hash
		bitXor: (to hash bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTIntervalExpression >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTIntervalExpression >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTIntervalExpression >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTIntervalExpression >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTIntervalExpression >> to [
	^ to
]

{ #category : #accessing }
PWBASTIntervalExpression >> to: anObject [
	to := anObject
]
