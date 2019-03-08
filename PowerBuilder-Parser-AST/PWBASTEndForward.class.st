Class {
	#name : #PWBASTEndForward,
	#superclass : #Object,
	#instVars : [
		'endForward'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTEndForward >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEndForward: self
]

{ #category : #accessing }
PWBASTEndForward >> endForward [
	^ endForward
]

{ #category : #accessing }
PWBASTEndForward >> endForward: anObject [
	endForward := anObject
]
