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

{ #category : #visiting }
PWBASTTransactionObject >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTTransactionObject: self
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
