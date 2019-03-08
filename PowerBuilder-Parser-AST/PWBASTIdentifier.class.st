Class {
	#name : #PWBASTIdentifier,
	#superclass : #Object,
	#instVars : [
		'identifier'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTIdentifier >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTIdentifier: self
]

{ #category : #accessing }
PWBASTIdentifier >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTIdentifier >> identifier: anObject [
	identifier := anObject
]
