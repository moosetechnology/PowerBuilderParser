Class {
	#name : #PWBASTOpenSqlCursor,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTOpenSqlCursor >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTOpenSqlCursor: self
]

{ #category : #accessing }
PWBASTOpenSqlCursor >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTOpenSqlCursor >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTOpenSqlCursor >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTOpenSqlCursor >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTOpenSqlCursor >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTOpenSqlCursor >> stopPosition: anObject [
	stopPosition := anObject
]
