Class {
	#name : #PWBASTElseOnLine,
	#superclass : #Object,
	#instVars : [
		'statement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTElseOnLine >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTElseOnLine: self
]

{ #category : #accessing }
PWBASTElseOnLine >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTElseOnLine >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTElseOnLine >> statement [
	^ statement
]

{ #category : #accessing }
PWBASTElseOnLine >> statement: anObject [
	statement := anObject
]

{ #category : #accessing }
PWBASTElseOnLine >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTElseOnLine >> stopPosition: anObject [
	stopPosition := anObject
]
