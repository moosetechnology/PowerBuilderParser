Class {
	#name : #PWBASTProgramStep,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTProgramStep >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTProgramStep: self
]

{ #category : #accessing }
PWBASTProgramStep >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTProgramStep >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTProgramStep >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTProgramStep >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTProgramStep >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTProgramStep >> stopPosition: anObject [
	stopPosition := anObject
]
