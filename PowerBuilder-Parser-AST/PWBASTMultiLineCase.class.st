Class {
	#name : #PWBASTMultiLineCase,
	#superclass : #Object,
	#instVars : [
		'expressionList',
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTMultiLineCase >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTMultiLineCase: self
]

{ #category : #accessing }
PWBASTMultiLineCase >> expressionList [
	^ expressionList
]

{ #category : #accessing }
PWBASTMultiLineCase >> expressionList: anObject [
	expressionList := anObject
]

{ #category : #accessing }
PWBASTMultiLineCase >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTMultiLineCase >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTMultiLineCase >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTMultiLineCase >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTMultiLineCase >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTMultiLineCase >> stopPosition: anObject [
	stopPosition := anObject
]
