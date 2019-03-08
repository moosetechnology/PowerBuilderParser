Class {
	#name : #PWBASTDeclareCursor,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'sqlQuery'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTDeclareCursor >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDeclareCursor: self
]

{ #category : #accessing }
PWBASTDeclareCursor >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTDeclareCursor >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTDeclareCursor >> sqlQuery [
	^ sqlQuery
]

{ #category : #accessing }
PWBASTDeclareCursor >> sqlQuery: anObject [
	sqlQuery := anObject
]
