Class {
	#name : #PWBASTGlobalVariableDeclaration,
	#superclass : #Object,
	#instVars : [
		'type',
		'variable'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTGlobalVariableDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTGlobalVariableDeclaration: self
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
