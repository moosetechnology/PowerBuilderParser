Class {
	#name : #PWBASTFunctionDefinition,
	#superclass : #Object,
	#instVars : [
		'functionSignature',
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTFunctionDefinition >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFunctionDefinition: self
]

{ #category : #accessing }
PWBASTFunctionDefinition >> functionSignature [
	^ functionSignature
]

{ #category : #accessing }
PWBASTFunctionDefinition >> functionSignature: anObject [
	functionSignature := anObject
]

{ #category : #accessing }
PWBASTFunctionDefinition >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTFunctionDefinition >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTFunctionDefinition >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTFunctionDefinition >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTFunctionDefinition >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTFunctionDefinition >> stopPosition: anObject [
	stopPosition := anObject
]
