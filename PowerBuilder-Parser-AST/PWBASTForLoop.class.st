Class {
	#name : #PWBASTForLoop,
	#superclass : #Object,
	#instVars : [
		'assignationStatement',
		'endExpression',
		'stepExpression',
		'statements'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTForLoop >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTForLoop: self
]

{ #category : #accessing }
PWBASTForLoop >> assignationStatement [
	^ assignationStatement
]

{ #category : #accessing }
PWBASTForLoop >> assignationStatement: anObject [
	assignationStatement := anObject
]

{ #category : #accessing }
PWBASTForLoop >> endExpression [
	^ endExpression
]

{ #category : #accessing }
PWBASTForLoop >> endExpression: anObject [
	endExpression := anObject
]

{ #category : #accessing }
PWBASTForLoop >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTForLoop >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTForLoop >> stepExpression [
	^ stepExpression
]

{ #category : #accessing }
PWBASTForLoop >> stepExpression: anObject [
	stepExpression := anObject
]
