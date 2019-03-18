Class {
	#name : #PWBASTElseIf,
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
PWBASTElseIf >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTElseIf: self
]

{ #category : #accessing }
PWBASTElseIf >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTElseIf >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
PWBASTElseIf >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTElseIf >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTElseIf >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTElseIf >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTElseIf >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTElseIf >> stopPosition: anObject [
	stopPosition := anObject
]
