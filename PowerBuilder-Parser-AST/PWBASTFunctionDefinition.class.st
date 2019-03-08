Class {
	#name : #PWBASTFunctionDefinition,
	#superclass : #Object,
	#instVars : [
		'functionSignature',
		'statements'
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
PWBASTFunctionDefinition >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTFunctionDefinition >> statements: anObject [
	statements := anObject
]
