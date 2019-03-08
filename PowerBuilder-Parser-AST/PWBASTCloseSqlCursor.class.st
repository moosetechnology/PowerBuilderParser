Class {
	#name : #PWBASTCloseSqlCursor,
	#superclass : #Object,
	#instVars : [
		'identifier'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTCloseSqlCursor >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCloseSqlCursor: self
]

{ #category : #accessing }
PWBASTCloseSqlCursor >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTCloseSqlCursor >> identifier: anObject [
	identifier := anObject
]
