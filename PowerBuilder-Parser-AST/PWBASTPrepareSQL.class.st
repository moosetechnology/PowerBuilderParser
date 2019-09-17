Class {
	#name : #PWBASTPrepareSQL,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTPrepareSQL >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTPrepareSQL: self
]

{ #category : #accessing }
PWBASTPrepareSQL >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTPrepareSQL >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTPrepareSQL >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTPrepareSQL >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTPrepareSQL >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTPrepareSQL >> stopPosition: anObject [
	stopPosition := anObject
]
