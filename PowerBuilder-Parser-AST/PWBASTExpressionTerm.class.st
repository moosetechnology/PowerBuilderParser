Class {
	#name : #PWBASTExpressionTerm,
	#superclass : #Object,
	#instVars : [
		'expressionTerm',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTExpressionTerm >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTExpressionTerm: self
]

{ #category : #accessing }
PWBASTExpressionTerm >> expressionTerm [
	^ expressionTerm
]

{ #category : #accessing }
PWBASTExpressionTerm >> expressionTerm: anObject [
	expressionTerm := anObject
]

{ #category : #accessing }
PWBASTExpressionTerm >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTExpressionTerm >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTExpressionTerm >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTExpressionTerm >> stopPosition: anObject [
	stopPosition := anObject
]
