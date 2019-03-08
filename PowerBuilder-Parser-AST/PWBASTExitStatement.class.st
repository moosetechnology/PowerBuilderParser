Class {
	#name : #PWBASTExitStatement,
	#superclass : #Object,
	#instVars : [
		'exitStatement'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTExitStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTExitStatement: self
]

{ #category : #accessing }
PWBASTExitStatement >> exitStatement [
	^ exitStatement
]

{ #category : #accessing }
PWBASTExitStatement >> exitStatement: anObject [
	exitStatement := anObject
]
