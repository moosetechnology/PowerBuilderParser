Class {
	#name : #PWBASTForwardDeclaration,
	#superclass : #Object,
	#instVars : [
		'typeDeclarations',
		'endForward',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTForwardDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTForwardDeclaration: self
]

{ #category : #accessing }
PWBASTForwardDeclaration >> endForward [
	^ endForward
]

{ #category : #accessing }
PWBASTForwardDeclaration >> endForward: anObject [
	endForward := anObject
]

{ #category : #accessing }
PWBASTForwardDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTForwardDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTForwardDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTForwardDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTForwardDeclaration >> typeDeclarations [
	^ typeDeclarations
]

{ #category : #accessing }
PWBASTForwardDeclaration >> typeDeclarations: anObject [
	typeDeclarations := anObject
]
