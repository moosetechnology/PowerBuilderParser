Class {
	#name : #PWBASTProgramStep,
	#superclass : #Object,
	#instVars : [
		'identifier'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTProgramStep >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTProgramStep: self
]

{ #category : #accessing }
PWBASTProgramStep >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTProgramStep >> identifier: anObject [
	identifier := anObject
]
