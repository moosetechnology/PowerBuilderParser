Class {
	#name : #PWBASTDescriptor,
	#superclass : #Object,
	#instVars : [
		'expression'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTDescriptor >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDescriptor: self
]

{ #category : #accessing }
PWBASTDescriptor >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTDescriptor >> expression: anObject [
	expression := anObject
]
