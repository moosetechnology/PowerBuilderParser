Class {
	#name : #PWBASTStatement,
	#superclass : #Object,
	#instVars : [
		'statement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTStatement: self
]

{ #category : #accessing }
PWBASTStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTStatement >> statement [
	^ statement
]

{ #category : #accessing }
PWBASTStatement >> statement: anObject [
	statement := anObject
]

{ #category : #accessing }
PWBASTStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTStatement >> stopPosition: anObject [
	stopPosition := anObject
]
