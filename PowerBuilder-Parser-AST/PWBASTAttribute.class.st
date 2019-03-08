Class {
	#name : #PWBASTAttribute,
	#superclass : #Object,
	#instVars : [
		'variableDeclarations'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTAttribute >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAttribute: self
]

{ #category : #accessing }
PWBASTAttribute >> variableDeclarations [
	^ variableDeclarations
]

{ #category : #accessing }
PWBASTAttribute >> variableDeclarations: anObject [
	variableDeclarations := anObject
]
