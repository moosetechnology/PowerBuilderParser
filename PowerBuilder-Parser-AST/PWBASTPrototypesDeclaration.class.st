Class {
	#name : #PWBASTPrototypesDeclaration,
	#superclass : #Object,
	#instVars : [
		'declarations'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTPrototypesDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTPrototypesDeclaration: self
]

{ #category : #accessing }
PWBASTPrototypesDeclaration >> declarations [
	^ declarations
]

{ #category : #accessing }
PWBASTPrototypesDeclaration >> declarations: anObject [
	declarations := anObject
]
