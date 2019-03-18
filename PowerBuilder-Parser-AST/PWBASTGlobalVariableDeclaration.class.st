Class {
	#name : #PWBASTGlobalVariableDeclaration,
	#superclass : #Object,
	#instVars : [
		'type',
		'variable',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTGlobalVariableDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTGlobalVariableDeclaration: self
]

{ #category : #accessing }
PWBASTGlobalVariableDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTGlobalVariableDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTGlobalVariableDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTGlobalVariableDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTGlobalVariableDeclaration >> type [
	^ type
]

{ #category : #accessing }
PWBASTGlobalVariableDeclaration >> type: anObject [
	type := anObject
]

{ #category : #accessing }
PWBASTGlobalVariableDeclaration >> variable [
	^ variable
]

{ #category : #accessing }
PWBASTGlobalVariableDeclaration >> variable: anObject [
	variable := anObject
]
