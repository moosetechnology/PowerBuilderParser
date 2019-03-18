Class {
	#name : #PWBASTGenerator,
	#superclass : #Object,
	#instVars : [
		'generatorToken',
		'parameters',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTGenerator >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTGenerator: self
]

{ #category : #accessing }
PWBASTGenerator >> generatorToken [
	^ generatorToken
]

{ #category : #accessing }
PWBASTGenerator >> generatorToken: anObject [
	generatorToken := anObject
]

{ #category : #accessing }
PWBASTGenerator >> parameters [
	^ parameters
]

{ #category : #accessing }
PWBASTGenerator >> parameters: anObject [
	parameters := anObject
]

{ #category : #accessing }
PWBASTGenerator >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTGenerator >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTGenerator >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTGenerator >> stopPosition: anObject [
	stopPosition := anObject
]
