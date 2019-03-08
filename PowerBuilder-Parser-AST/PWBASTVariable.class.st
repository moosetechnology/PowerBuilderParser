Class {
	#name : #PWBASTVariable,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'arrayWithSize'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTVariable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTVariable: self
]

{ #category : #accessing }
PWBASTVariable >> arrayWithSize [
	^ arrayWithSize
]

{ #category : #accessing }
PWBASTVariable >> arrayWithSize: anObject [
	arrayWithSize := anObject
]

{ #category : #accessing }
PWBASTVariable >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTVariable >> identifier: anObject [
	identifier := anObject
]
