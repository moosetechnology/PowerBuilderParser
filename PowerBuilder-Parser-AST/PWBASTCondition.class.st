Class {
	#name : #PWBASTCondition,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
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

{ #category : #accessing }
PWBASTCondition >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCondition >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCondition >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCondition >> stopPosition: anObject [
	stopPosition := anObject
]
