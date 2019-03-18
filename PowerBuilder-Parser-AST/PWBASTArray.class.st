Class {
	#name : #PWBASTArray,
	#superclass : #Object,
	#instVars : [
		'expressions',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTArray >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArray: self
]

{ #category : #accessing }
PWBASTArray >> expressions [
	^ expressions
]

{ #category : #accessing }
PWBASTArray >> expressions: anObject [
	expressions := anObject
]

{ #category : #accessing }
PWBASTArray >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTArray >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTArray >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTArray >> stopPosition: anObject [
	stopPosition := anObject
]
