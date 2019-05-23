Class {
	#name : #PWBASTThis,
	#superclass : #Object,
	#instVars : [
		'this',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTThis >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTThis: self
]

{ #category : #accessing }
PWBASTThis >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTThis >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTThis >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTThis >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTThis >> this [
	^ this
]

{ #category : #accessing }
PWBASTThis >> this: anObject [
	this := anObject
]
