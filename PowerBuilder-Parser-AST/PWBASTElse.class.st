Class {
	#name : #PWBASTElse,
	#superclass : #Object,
	#instVars : [
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTElse >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTElse: self
]

{ #category : #accessing }
PWBASTElse >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTElse >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTElse >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTElse >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTElse >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTElse >> stopPosition: anObject [
	stopPosition := anObject
]
