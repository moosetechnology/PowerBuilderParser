Class {
	#name : #PWBASTCase,
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
PWBASTCase >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCase: self
]

{ #category : #accessing }
PWBASTCase >> expressionList [
	^ expressionList
]

{ #category : #accessing }
PWBASTCase >> expressionList: anObject [
	expressionList := anObject
]

{ #category : #accessing }
PWBASTCase >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCase >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCase >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTCase >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTCase >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCase >> stopPosition: anObject [
	stopPosition := anObject
]
