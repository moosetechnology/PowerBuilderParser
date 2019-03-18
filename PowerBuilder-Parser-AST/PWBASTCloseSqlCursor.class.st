Class {
	#name : #PWBASTCloseSqlCursor,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
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

{ #category : #accessing }
PWBASTCloseSqlCursor >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCloseSqlCursor >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCloseSqlCursor >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCloseSqlCursor >> stopPosition: anObject [
	stopPosition := anObject
]
