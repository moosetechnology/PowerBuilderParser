Class {
	#name : #PWBASTBooleanValue,
	#superclass : #Object,
	#instVars : [
		'booleanValue',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTBooleanValue >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTBooleanValue: self
]

{ #category : #accessing }
PWBASTBooleanValue >> booleanValue [
	^ booleanValue
]

{ #category : #accessing }
PWBASTBooleanValue >> booleanValue: anObject [
	booleanValue := anObject
]

{ #category : #accessing }
PWBASTBooleanValue >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTBooleanValue >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTBooleanValue >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTBooleanValue >> stopPosition: anObject [
	stopPosition := anObject
]
