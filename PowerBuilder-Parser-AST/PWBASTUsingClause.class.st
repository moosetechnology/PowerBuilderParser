Class {
	#name : #PWBASTUsingClause,
	#superclass : #Object,
	#instVars : [
		'transactionObject'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTUsingClause >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTUsingClause: self
]

{ #category : #accessing }
PWBASTUsingClause >> transactionObject [
	^ transactionObject
]

{ #category : #accessing }
PWBASTUsingClause >> transactionObject: anObject [
	transactionObject := anObject
]
