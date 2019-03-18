Class {
	#name : #PWBASTVariableDeclarations,
	#superclass : #Object,
	#instVars : [
		'type',
		'variableAssignations',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTVariableDeclarations >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTVariableDeclarations: self
]

{ #category : #accessing }
PWBASTVariableDeclarations >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTVariableDeclarations >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTVariableDeclarations >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTVariableDeclarations >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTVariableDeclarations >> type [
	^ type
]

{ #category : #accessing }
PWBASTVariableDeclarations >> type: anObject [
	type := anObject
]

{ #category : #accessing }
PWBASTVariableDeclarations >> variableAssignations [
	^ variableAssignations
]

{ #category : #accessing }
PWBASTVariableDeclarations >> variableAssignations: anObject [
	variableAssignations := anObject
]
