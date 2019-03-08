Class {
	#name : #PWBASTDoWhileLoop,
	#superclass : #Object,
	#instVars : [
		'expression',
		'statements'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTDoWhileLoop >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDoWhileLoop: self
]

{ #category : #accessing }
PWBASTDoWhileLoop >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTDoWhileLoop >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
PWBASTDoWhileLoop >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTDoWhileLoop >> statements: anObject [
	statements := anObject
]
