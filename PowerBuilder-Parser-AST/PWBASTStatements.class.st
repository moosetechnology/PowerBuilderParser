Class {
	#name : #PWBASTStatements,
	#superclass : #Object,
	#instVars : [
		'statements'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTStatements >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTStatements: self
]

{ #category : #accessing }
PWBASTStatements >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTStatements >> statements: anObject [
	statements := anObject
]
