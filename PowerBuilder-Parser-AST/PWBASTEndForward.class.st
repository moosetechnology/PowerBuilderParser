Class {
	#name : #PWBASTEndForward,
	#superclass : #Object,
	#instVars : [
		'endForward',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTEndForward >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEndForward: self
]

{ #category : #accessing }
PWBASTEndForward >> endForward [
	^ endForward
]

{ #category : #accessing }
PWBASTEndForward >> endForward: anObject [
	endForward := anObject
]

{ #category : #accessing }
PWBASTEndForward >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTEndForward >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTEndForward >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTEndForward >> stopPosition: anObject [
	stopPosition := anObject
]
