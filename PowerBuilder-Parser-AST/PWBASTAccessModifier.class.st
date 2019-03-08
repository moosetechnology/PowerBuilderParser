Class {
	#name : #PWBASTAccessModifier,
	#superclass : #Object,
	#instVars : [
		'accessModifier'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTAccessModifier >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAccessModifier: self
]

{ #category : #accessing }
PWBASTAccessModifier >> accessModifier [
	^ accessModifier
]

{ #category : #accessing }
PWBASTAccessModifier >> accessModifier: anObject [
	accessModifier := anObject
]
