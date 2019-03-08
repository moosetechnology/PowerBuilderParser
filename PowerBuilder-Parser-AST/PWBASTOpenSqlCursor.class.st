Class {
	#name : #PWBASTOpenSqlCursor,
	#superclass : #Object,
	#instVars : [
		'identifier'
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
