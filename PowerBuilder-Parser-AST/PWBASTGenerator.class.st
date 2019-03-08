Class {
	#name : #PWBASTGenerator,
	#superclass : #Object,
	#instVars : [
		'generatorToken',
		'parameters'
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
