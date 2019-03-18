Class {
	#name : #PWBASTDoUntilLoop,
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
PWBASTDoUntilLoop >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDoUntilLoop: self
]

{ #category : #accessing }
PWBASTDoUntilLoop >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTDoUntilLoop >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
PWBASTDoUntilLoop >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDoUntilLoop >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDoUntilLoop >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTDoUntilLoop >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTDoUntilLoop >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDoUntilLoop >> stopPosition: anObject [
	stopPosition := anObject
]
