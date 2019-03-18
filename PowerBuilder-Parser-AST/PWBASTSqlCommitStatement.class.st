Class {
	#name : #PWBASTSqlCommitStatement,
	#superclass : #Object,
	#instVars : [
		'usingClause',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTSqlCommitStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSqlCommitStatement: self
]

{ #category : #accessing }
PWBASTSqlCommitStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSqlCommitStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSqlCommitStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSqlCommitStatement >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTSqlCommitStatement >> usingClause [
	^ usingClause
]

{ #category : #accessing }
PWBASTSqlCommitStatement >> usingClause: anObject [
	usingClause := anObject
]
