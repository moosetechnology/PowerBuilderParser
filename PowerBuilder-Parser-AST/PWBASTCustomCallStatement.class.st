Class {
	#name : #PWBASTCustomCallStatement,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTCustomCallStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCustomCallStatement: self
]

{ #category : #accessing }
PWBASTCustomCallStatement >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTCustomCallStatement >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTCustomCallStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCustomCallStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCustomCallStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCustomCallStatement >> stopPosition: anObject [
	stopPosition := anObject
]
