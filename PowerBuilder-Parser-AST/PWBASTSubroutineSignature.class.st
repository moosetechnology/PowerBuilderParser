Class {
	#name : #PWBASTSubroutineSignature,
	#superclass : #Object,
	#instVars : [
		'accessModifier',
		'identifier',
		'arguments'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTSubroutineSignature >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSubroutineSignature: self
]

{ #category : #accessing }
PWBASTSubroutineSignature >> accessModifier [
	^ accessModifier
]

{ #category : #accessing }
PWBASTSubroutineSignature >> accessModifier: anObject [
	accessModifier := anObject
]

{ #category : #accessing }
PWBASTSubroutineSignature >> arguments [
	^ arguments
]

{ #category : #accessing }
PWBASTSubroutineSignature >> arguments: anObject [
	arguments := anObject
]

{ #category : #accessing }
PWBASTSubroutineSignature >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTSubroutineSignature >> identifier: anObject [
	identifier := anObject
]
