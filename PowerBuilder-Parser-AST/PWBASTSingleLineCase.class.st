Class {
	#name : #PWBASTSingleLineCase,
	#superclass : #Object,
	#instVars : [
		'expressionList',
		'statement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTSingleLineCase >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSingleLineCase: self
]

{ #category : #accessing }
PWBASTSingleLineCase >> expressionList [
	^ expressionList
]

{ #category : #accessing }
PWBASTSingleLineCase >> expressionList: anObject [
	expressionList := anObject
]

{ #category : #accessing }
PWBASTSingleLineCase >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSingleLineCase >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSingleLineCase >> statement [
	^ statement
]

{ #category : #accessing }
PWBASTSingleLineCase >> statement: anObject [
	statement := anObject
]

{ #category : #accessing }
PWBASTSingleLineCase >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSingleLineCase >> stopPosition: anObject [
	stopPosition := anObject
]
