Class {
	#name : #PWBASTSharedVariables,
	#superclass : #Object,
	#instVars : [
		'attributes',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTSharedVariables >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSharedVariables: self
]

{ #category : #accessing }
PWBASTSharedVariables >> attributes [
	^ attributes
]

{ #category : #accessing }
PWBASTSharedVariables >> attributes: anObject [
	attributes := anObject
]

{ #category : #accessing }
PWBASTSharedVariables >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSharedVariables >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSharedVariables >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSharedVariables >> stopPosition: anObject [
	stopPosition := anObject
]
