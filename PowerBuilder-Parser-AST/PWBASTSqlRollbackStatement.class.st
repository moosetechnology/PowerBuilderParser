Class {
	#name : #PWBASTSqlRollbackStatement,
	#superclass : #Object,
	#instVars : [
		'usingClause',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTSqlRollbackStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSqlRollbackStatement: self
]

{ #category : #accessing }
PWBASTSqlRollbackStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSqlRollbackStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSqlRollbackStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSqlRollbackStatement >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTSqlRollbackStatement >> usingClause [
	^ usingClause
]

{ #category : #accessing }
PWBASTSqlRollbackStatement >> usingClause: anObject [
	usingClause := anObject
]
