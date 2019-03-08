Class {
	#name : #PWBASTCondition,
	#superclass : #Object,
	#instVars : [
		'expression'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTCondition >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCondition: self
]

{ #category : #accessing }
PWBASTCondition >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTCondition >> expression: anObject [
	expression := anObject
]
