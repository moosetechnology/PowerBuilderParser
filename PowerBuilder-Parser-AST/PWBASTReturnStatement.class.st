Class {
	#name : #PWBASTReturnStatement,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTReturnStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTReturnStatement: self
]

{ #category : #accessing }
PWBASTReturnStatement >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTReturnStatement >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
PWBASTReturnStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTReturnStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTReturnStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTReturnStatement >> stopPosition: anObject [
	stopPosition := anObject
]
