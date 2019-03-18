Class {
	#name : #PWBASTPostFixOperator,
	#superclass : #Object,
	#instVars : [
		'access',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTPostFixOperator >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTPostFixOperator: self
]

{ #category : #accessing }
PWBASTPostFixOperator >> access [
	^ access
]

{ #category : #accessing }
PWBASTPostFixOperator >> access: anObject [
	access := anObject
]

{ #category : #accessing }
PWBASTPostFixOperator >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTPostFixOperator >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTPostFixOperator >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTPostFixOperator >> stopPosition: anObject [
	stopPosition := anObject
]
