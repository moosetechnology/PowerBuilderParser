Class {
	#name : #PWBASTSubroutineDeclaration,
	#superclass : #Object,
	#instVars : [
		'subroutineSignature'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTSubroutineDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSubroutineDeclaration: self
]

{ #category : #accessing }
PWBASTSubroutineDeclaration >> subroutineSignature [
	^ subroutineSignature
]

{ #category : #accessing }
PWBASTSubroutineDeclaration >> subroutineSignature: anObject [
	subroutineSignature := anObject
]
