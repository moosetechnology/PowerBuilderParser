Class {
	#name : #PWBASTCustomCallStatement,
	#superclass : #Object,
	#instVars : [
		'identifier'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTCustomCallStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCustomCallStatement: self
]

{ #category : #accessing }
PWBASTCustomCallStatement >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTCustomCallStatement >> identifier: anObject [
	identifier := anObject
]
