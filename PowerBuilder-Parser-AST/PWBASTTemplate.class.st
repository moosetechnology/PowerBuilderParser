Class {
	#name : #PWBASTTemplate,
	#superclass : #Object,
	#instVars : [
		'options',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTTemplate >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTTemplate: self
]

{ #category : #accessing }
PWBASTTemplate >> options [
	^ options
]

{ #category : #accessing }
PWBASTTemplate >> options: anObject [
	options := anObject
]

{ #category : #accessing }
PWBASTTemplate >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTTemplate >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTTemplate >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTTemplate >> stopPosition: anObject [
	stopPosition := anObject
]
