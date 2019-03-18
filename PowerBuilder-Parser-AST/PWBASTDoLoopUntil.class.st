Class {
	#name : #PWBASTDoLoopUntil,
	#superclass : #Object,
	#instVars : [
		'statements',
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTDoLoopUntil >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDoLoopUntil: self
]

{ #category : #accessing }
PWBASTDoLoopUntil >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTDoLoopUntil >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
PWBASTDoLoopUntil >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDoLoopUntil >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDoLoopUntil >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTDoLoopUntil >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTDoLoopUntil >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDoLoopUntil >> stopPosition: anObject [
	stopPosition := anObject
]
