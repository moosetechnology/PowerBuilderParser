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

{ #category : #visiting }
PWBASTUsingClause >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTUsingClause: self
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
