Class {
	#name : #PWBASTGotoStatement,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTGotoStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTGotoStatement: self
]

{ #category : #accessing }
PWBASTGotoStatement >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTGotoStatement >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTGotoStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTGotoStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTGotoStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTGotoStatement >> stopPosition: anObject [
	stopPosition := anObject
]
