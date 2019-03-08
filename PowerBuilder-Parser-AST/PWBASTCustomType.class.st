Class {
	#name : #PWBASTCustomType,
	#superclass : #Object,
	#instVars : [
		'identifier'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTCustomType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCustomType: self
]

{ #category : #accessing }
PWBASTCustomType >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTCustomType >> identifier: anObject [
	identifier := anObject
]
