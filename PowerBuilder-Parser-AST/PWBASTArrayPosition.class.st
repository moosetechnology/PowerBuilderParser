Class {
	#name : #PWBASTArrayPosition,
	#superclass : #Object,
	#instVars : [
		'expression'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTArrayPosition >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArrayPosition: self
]

{ #category : #accessing }
PWBASTArrayPosition >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTArrayPosition >> expression: anObject [
	expression := anObject
]
