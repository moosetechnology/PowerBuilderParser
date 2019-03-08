Class {
	#name : #PWBASTArray,
	#superclass : #Object,
	#instVars : [
		'expressions'
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
