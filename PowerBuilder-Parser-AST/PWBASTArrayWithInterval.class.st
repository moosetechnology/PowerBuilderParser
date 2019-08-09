Class {
	#name : #PWBASTArrayWithInterval,
	#superclass : #Object,
	#instVars : [
		'startIndex',
		'endIndex',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTArrayWithInterval >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArrayWithInterval: self
]

{ #category : #accessing }
PWBASTArrayWithInterval >> endIndex [
	^ endIndex
]

{ #category : #accessing }
PWBASTArrayWithInterval >> endIndex: anObject [
	endIndex := anObject
]

{ #category : #accessing }
PWBASTArrayWithInterval >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTArrayWithInterval >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
PWBASTArrayWithInterval >> startIndex [
	^ startIndex
]

{ #category : #accessing }
PWBASTArrayWithInterval >> startIndex: anObject [
	startIndex := anObject
]

{ #category : #accessing }
PWBASTArrayWithInterval >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTArrayWithInterval >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTArrayWithInterval >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTArrayWithInterval >> stopPosition: anObject [
	stopPosition := anObject
]
