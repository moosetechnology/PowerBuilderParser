Class {
	#name : #MrlPWBASTIntervalExpression,
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
MrlPWBASTIntervalExpression >> = anObject [
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
MrlPWBASTIntervalExpression >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTIntervalExpression: self
]

{ #category : #accessing }
MrlPWBASTIntervalExpression >> from [
	^ from
]

{ #category : #accessing }
MrlPWBASTIntervalExpression >> from: anObject [
	from := anObject
]

{ #category : #comparing }
MrlPWBASTIntervalExpression >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ from hash
		bitXor: (to hash bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTIntervalExpression >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTIntervalExpression >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTIntervalExpression >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTIntervalExpression >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTIntervalExpression >> to [
	^ to
]

{ #category : #accessing }
MrlPWBASTIntervalExpression >> to: anObject [
	to := anObject
]
