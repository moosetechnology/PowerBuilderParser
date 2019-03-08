Class {
	#name : #PWBASTSqlQuery,
	#superclass : #Object,
	#instVars : [
		'sqlQuery'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTSqlQuery >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSqlQuery: self
]

{ #category : #accessing }
PWBASTSqlQuery >> sqlQuery [
	^ sqlQuery
]

{ #category : #accessing }
PWBASTSqlQuery >> sqlQuery: anObject [
	sqlQuery := anObject
]
