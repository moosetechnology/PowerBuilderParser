Class {
	#name : #PWBASTVariable,
	#superclass : #Object,
	#instVars : [
		'this',
		'identifier',
		'arrayWithSize',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTVariable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTVariable: self
]

{ #category : #accessing }
PWBASTVariable >> arrayWithSize [
	^ arrayWithSize
]

{ #category : #accessing }
PWBASTVariable >> arrayWithSize: anObject [
	arrayWithSize := anObject
]

{ #category : #accessing }
PWBASTVariable >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTVariable >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTVariable >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTVariable >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTVariable >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTVariable >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTVariable >> this [
	^ this
]

{ #category : #accessing }
PWBASTVariable >> this: anObject [
	this := anObject
]
