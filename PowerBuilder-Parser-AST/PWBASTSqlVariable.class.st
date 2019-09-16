Class {
	#name : #PWBASTSqlVariable,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTSqlVariable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSqlVariable: self
]

{ #category : #accessing }
PWBASTSqlVariable >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTSqlVariable >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTSqlVariable >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSqlVariable >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSqlVariable >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSqlVariable >> stopPosition: anObject [
	stopPosition := anObject
]
