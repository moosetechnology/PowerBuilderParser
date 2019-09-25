Class {
	#name : #PWBASTTransactionObject,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTTransactionObject >> = anObject [
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
PWBASTTransactionObject >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTTransactionObject: self
]

{ #category : #comparing }
PWBASTTransactionObject >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTTransactionObject >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTTransactionObject >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTTransactionObject >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTTransactionObject >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTTransactionObject >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTTransactionObject >> stopPosition: anObject [
	stopPosition := anObject
]
