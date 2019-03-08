Class {
	#name : #PWBASTColumnDefinition,
	#superclass : #Object,
	#instVars : [
		'options'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTColumnDefinition >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTColumnDefinition: self
]

{ #category : #accessing }
PWBASTColumnDefinition >> options [
	^ options
]

{ #category : #accessing }
PWBASTColumnDefinition >> options: anObject [
	options := anObject
]
