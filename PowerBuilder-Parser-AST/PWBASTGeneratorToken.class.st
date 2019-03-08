Class {
	#name : #PWBASTGeneratorToken,
	#superclass : #Object,
	#instVars : [
		'generatorToken'
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
