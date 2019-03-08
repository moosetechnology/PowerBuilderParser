Class {
	#name : #PWBASTExpressionTerm,
	#superclass : #Object,
	#instVars : [
		'expressionTerm'
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
