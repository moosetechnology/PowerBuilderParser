Class {
	#name : #PWBASTTypeVariable,
	#superclass : #Object,
	#instVars : [
		'attributes'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTTypeVariable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTTypeVariable: self
]

{ #category : #accessing }
PWBASTTypeVariable >> attributes [
	^ attributes
]

{ #category : #accessing }
PWBASTTypeVariable >> attributes: anObject [
	attributes := anObject
]
