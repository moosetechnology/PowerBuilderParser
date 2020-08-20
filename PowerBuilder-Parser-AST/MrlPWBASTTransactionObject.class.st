Class {
	#name : #MrlPWBASTTransactionObject,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTTransactionObject >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ identifier = anObject identifier
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTTransactionObject >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTTransactionObject: self
]

{ #category : #comparing }
MrlPWBASTTransactionObject >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTTransactionObject >> identifier [
	^ identifier
]

{ #category : #accessing }
MrlPWBASTTransactionObject >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
MrlPWBASTTransactionObject >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTTransactionObject >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTTransactionObject >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTTransactionObject >> stopPosition: anObject [
	stopPosition := anObject
]
