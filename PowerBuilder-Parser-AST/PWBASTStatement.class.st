Class {
	#name : #PWBASTStatement,
	#superclass : #Object,
	#instVars : [
		'statement'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTStatement: self
]

{ #category : #accessing }
PWBASTStatement >> statement [
	^ statement
]

{ #category : #accessing }
PWBASTStatement >> statement: anObject [
	statement := anObject
]
