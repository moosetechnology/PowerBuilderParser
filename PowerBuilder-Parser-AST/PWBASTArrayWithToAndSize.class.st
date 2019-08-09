Class {
	#name : #PWBASTArrayWithToAndSize,
	#superclass : #Object,
	#instVars : [
		'expressions',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTArrayWithToAndSize >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArrayWithToAndSize: self
]

{ #category : #accessing }
PWBASTArrayWithToAndSize >> expressions [
	^ expressions
]

{ #category : #accessing }
PWBASTArrayWithToAndSize >> expressions: anObject [
	expressions := anObject
]

{ #category : #accessing }
PWBASTArrayWithToAndSize >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTArrayWithToAndSize >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTArrayWithToAndSize >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTArrayWithToAndSize >> stopPosition: anObject [
	stopPosition := anObject
]
