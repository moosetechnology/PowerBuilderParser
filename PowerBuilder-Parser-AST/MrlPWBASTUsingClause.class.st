Class {
	#name : #MrlPWBASTUsingClause,
	#superclass : #Object,
	#instVars : [
		'transactionObject',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTUsingClause >> = anObject [
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
MrlPWBASTUsingClause >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTUsingClause: self
]

{ #category : #comparing }
MrlPWBASTUsingClause >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ transactionObject hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTUsingClause >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTUsingClause >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTUsingClause >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTUsingClause >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTUsingClause >> transactionObject [
	^ transactionObject
]

{ #category : #accessing }
MrlPWBASTUsingClause >> transactionObject: anObject [
	transactionObject := anObject
]
