Class {
	#name : #PWBASTDescriptor,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
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

{ #category : #accessing }
PWBASTDescriptor >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDescriptor >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDescriptor >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDescriptor >> stopPosition: anObject [
	stopPosition := anObject
]
