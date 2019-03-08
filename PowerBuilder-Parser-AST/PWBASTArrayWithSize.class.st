Class {
	#name : #PWBASTArrayWithSize,
	#superclass : #Object,
	#instVars : [
		'expressions'
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
