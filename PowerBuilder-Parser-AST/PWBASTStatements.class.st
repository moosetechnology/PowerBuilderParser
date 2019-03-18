Class {
	#name : #PWBASTStatements,
	#superclass : #Object,
	#instVars : [
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTStatements >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTStatements: self
]

{ #category : #accessing }
PWBASTStatements >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTStatements >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTStatements >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTStatements >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTStatements >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTStatements >> stopPosition: anObject [
	stopPosition := anObject
]
