Class {
	#name : #PWBASTFunctionSignature,
	#superclass : #Object,
	#instVars : [
		'accessModifier',
		'type',
		'identifier',
		'arguments',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTFunctionSignature >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFunctionSignature: self
]

{ #category : #accessing }
PWBASTFunctionSignature >> accessModifier [
	^ accessModifier
]

{ #category : #accessing }
PWBASTFunctionSignature >> accessModifier: anObject [
	accessModifier := anObject
]

{ #category : #accessing }
PWBASTFunctionSignature >> arguments [
	^ arguments
]

{ #category : #accessing }
PWBASTFunctionSignature >> arguments: anObject [
	arguments := anObject
]

{ #category : #accessing }
PWBASTFunctionSignature >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTFunctionSignature >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTFunctionSignature >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTFunctionSignature >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTFunctionSignature >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTFunctionSignature >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTFunctionSignature >> type [
	^ type
]

{ #category : #accessing }
PWBASTFunctionSignature >> type: anObject [
	type := anObject
]
