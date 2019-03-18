Class {
	#name : #PWBASTFunctionDeclaration,
	#superclass : #Object,
	#instVars : [
		'functionSignature',
		'startPosition',
		'stopPosition'
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

{ #category : #accessing }
PWBASTFunctionDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTFunctionDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTFunctionDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTFunctionDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]
