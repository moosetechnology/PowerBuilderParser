Class {
	#name : #PWBASTAttribute,
	#superclass : #Object,
	#instVars : [
		'variableDeclarations',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTAttribute >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAttribute: self
]

{ #category : #accessing }
PWBASTAttribute >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTAttribute >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTAttribute >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTAttribute >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTAttribute >> variableDeclarations [
	^ variableDeclarations
]

{ #category : #accessing }
PWBASTAttribute >> variableDeclarations: anObject [
	variableDeclarations := anObject
]
