Class {
	#name : #PWBASTIfStatement,
	#superclass : #Object,
	#instVars : [
		'ifStatement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTIfStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTIfStatement: self
]

{ #category : #accessing }
PWBASTIfStatement >> ifStatement [
	^ ifStatement
]

{ #category : #accessing }
PWBASTIfStatement >> ifStatement: anObject [
	ifStatement := anObject
]

{ #category : #accessing }
PWBASTIfStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTIfStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTIfStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTIfStatement >> stopPosition: anObject [
	stopPosition := anObject
]
