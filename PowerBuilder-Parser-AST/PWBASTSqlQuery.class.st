Class {
	#name : #PWBASTSqlQuery,
	#superclass : #Object,
	#instVars : [
		'sqlQuery',
		'startPosition',
		'stopPosition'
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

{ #category : #accessing }
PWBASTSqlQuery >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSqlQuery >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSqlQuery >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSqlQuery >> stopPosition: anObject [
	stopPosition := anObject
]
