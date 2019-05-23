Class {
	#name : #PWBASTGeneratorToken,
	#superclass : #Object,
	#instVars : [
		'generatorToken',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTGeneratorToken >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTGeneratorToken: self
]

{ #category : #accessing }
PWBASTGeneratorToken >> generatorToken [
	^ generatorToken
]

{ #category : #accessing }
PWBASTGeneratorToken >> generatorToken: anObject [
	generatorToken := anObject
]

{ #category : #accessing }
PWBASTGeneratorToken >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTGeneratorToken >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTGeneratorToken >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTGeneratorToken >> stopPosition: anObject [
	stopPosition := anObject
]
