Class {
	#name : #PWBASTUsingClause,
	#superclass : #Object,
	#instVars : [
		'transactionObject',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTUsingClause >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ transactionObject = anObject transactionObject
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTUsingClause >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTUsingClause: self
]

{ #category : #comparing }
PWBASTUsingClause >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ transactionObject hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTUsingClause >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTUsingClause >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTUsingClause >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTUsingClause >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTUsingClause >> transactionObject [
	^ transactionObject
]

{ #category : #accessing }
PWBASTUsingClause >> transactionObject: anObject [
	transactionObject := anObject
]
