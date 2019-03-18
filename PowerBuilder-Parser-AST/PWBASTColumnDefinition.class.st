Class {
	#name : #PWBASTColumnDefinition,
	#superclass : #Object,
	#instVars : [
		'options',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTColumnDefinition >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTColumnDefinition: self
]

{ #category : #accessing }
PWBASTColumnDefinition >> options [
	^ options
]

{ #category : #accessing }
PWBASTColumnDefinition >> options: anObject [
	options := anObject
]

{ #category : #accessing }
PWBASTColumnDefinition >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTColumnDefinition >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTColumnDefinition >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTColumnDefinition >> stopPosition: anObject [
	stopPosition := anObject
]
