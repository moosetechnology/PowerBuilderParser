Class {
	#name : #PWBASTIfStatement,
	#superclass : #Object,
	#instVars : [
		'ifStatement'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTIfStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTIfStatement: self
]

{ #category : #accessing }
PWBASTIfStatement >> ifStatement [
	^ ifStatement
]

{ #category : #accessing }
PWBASTIfStatement >> ifStatement: anObject [
	ifStatement := anObject
]
