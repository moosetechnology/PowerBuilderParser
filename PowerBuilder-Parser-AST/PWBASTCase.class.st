Class {
	#name : #PWBASTCase,
	#superclass : #Object,
	#instVars : [
		'expressionList',
		'statements'
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
PWBASTCase >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTCase >> statements: anObject [
	statements := anObject
]
