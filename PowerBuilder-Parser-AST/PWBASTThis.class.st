Class {
	#name : #PWBASTThis,
	#superclass : #Object,
	#instVars : [
		'this'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTThis >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTThis: self
]

{ #category : #accessing }
PWBASTThis >> this [
	^ this
]

{ #category : #accessing }
PWBASTThis >> this: anObject [
	this := anObject
]
