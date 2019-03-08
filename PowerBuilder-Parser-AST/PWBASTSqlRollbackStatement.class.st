Class {
	#name : #PWBASTSqlRollbackStatement,
	#superclass : #Object,
	#instVars : [
		'usingClause'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTSqlRollbackStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSqlRollbackStatement: self
]

{ #category : #accessing }
PWBASTSqlRollbackStatement >> usingClause [
	^ usingClause
]

{ #category : #accessing }
PWBASTSqlRollbackStatement >> usingClause: anObject [
	usingClause := anObject
]
