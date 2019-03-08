Class {
	#name : #PWBASTTransactionObject,
	#superclass : #Object,
	#instVars : [
		'identifier'
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
