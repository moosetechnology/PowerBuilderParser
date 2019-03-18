Class {
	#name : #PWBASTArrayPosition,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
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

{ #category : #accessing }
PWBASTArrayPosition >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTArrayPosition >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTArrayPosition >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTArrayPosition >> stopPosition: anObject [
	stopPosition := anObject
]
