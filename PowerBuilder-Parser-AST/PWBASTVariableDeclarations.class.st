Class {
	#name : #PWBASTVariableDeclarations,
	#superclass : #Object,
	#instVars : [
		'type',
		'variableAssignations'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTVariableDeclarations >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTVariableDeclarations: self
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
