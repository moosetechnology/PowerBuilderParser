Class {
	#name : #PWBASTAccessOrType,
	#superclass : #Object,
	#instVars : [
		'accessOrType'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTAccessOrType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAccessOrType: self
]

{ #category : #accessing }
PWBASTAccessOrType >> accessOrType [
	^ accessOrType
]

{ #category : #accessing }
PWBASTAccessOrType >> accessOrType: anObject [
	accessOrType := anObject
]
