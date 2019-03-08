Class {
	#name : #PWBASTSqlCommitStatement,
	#superclass : #Object,
	#instVars : [
		'usingClause'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTSqlCommitStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSqlCommitStatement: self
]

{ #category : #accessing }
PWBASTSqlCommitStatement >> usingClause [
	^ usingClause
]

{ #category : #accessing }
PWBASTSqlCommitStatement >> usingClause: anObject [
	usingClause := anObject
]
