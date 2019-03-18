Class {
	#name : #PWBASTDeclareCursor,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'sqlQuery',
		'startPosition',
		'stopPosition'
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

{ #category : #accessing }
PWBASTDeclareCursor >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDeclareCursor >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDeclareCursor >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDeclareCursor >> stopPosition: anObject [
	stopPosition := anObject
]
