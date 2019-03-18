Class {
	#name : #PWBASTArrayWithSize,
	#superclass : #Object,
	#instVars : [
		'expressions',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTArrayWithSize >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArrayWithSize: self
]

{ #category : #accessing }
PWBASTArrayWithSize >> expressions [
	^ expressions
]

{ #category : #accessing }
PWBASTArrayWithSize >> expressions: anObject [
	expressions := anObject
]

{ #category : #accessing }
PWBASTArrayWithSize >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTArrayWithSize >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTArrayWithSize >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTArrayWithSize >> stopPosition: anObject [
	stopPosition := anObject
]
