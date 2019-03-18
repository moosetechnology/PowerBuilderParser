Class {
	#name : #PWBASTDoWhileLoop,
	#superclass : #Object,
	#instVars : [
		'expression',
		'statements',
		'startPosition',
		'stopPosition'
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
PWBASTDoWhileLoop >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDoWhileLoop >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDoWhileLoop >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTDoWhileLoop >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTDoWhileLoop >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDoWhileLoop >> stopPosition: anObject [
	stopPosition := anObject
]
