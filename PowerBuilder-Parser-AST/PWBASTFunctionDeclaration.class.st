Class {
	#name : #PWBASTFunctionDeclaration,
	#superclass : #Object,
	#instVars : [
		'functionSignature'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTFunctionDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFunctionDeclaration: self
]

{ #category : #accessing }
PWBASTFunctionDeclaration >> functionSignature [
	^ functionSignature
]

{ #category : #accessing }
PWBASTFunctionDeclaration >> functionSignature: anObject [
	functionSignature := anObject
]
