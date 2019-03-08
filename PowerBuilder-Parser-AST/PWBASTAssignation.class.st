Class {
	#name : #PWBASTAssignation,
	#superclass : #Object,
	#instVars : [
		'expression'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTAssignation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAssignation: self
]

{ #category : #accessing }
PWBASTAssignation >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTAssignation >> expression: anObject [
	expression := anObject
]
