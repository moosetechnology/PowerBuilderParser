Class {
	#name : #PWBASTElseOnLine,
	#superclass : #Object,
	#instVars : [
		'statement'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTElseOnLine >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTElseOnLine: self
]

{ #category : #accessing }
PWBASTElseOnLine >> statement [
	^ statement
]

{ #category : #accessing }
PWBASTElseOnLine >> statement: anObject [
	statement := anObject
]
