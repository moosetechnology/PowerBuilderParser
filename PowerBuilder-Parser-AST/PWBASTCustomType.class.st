Class {
	#name : #PWBASTCustomType,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTCustomType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCustomType: self
]

{ #category : #accessing }
PWBASTCustomType >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTCustomType >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTCustomType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCustomType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCustomType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCustomType >> stopPosition: anObject [
	stopPosition := anObject
]
