Class {
	#name : #PWBASTContinueStatement,
	#superclass : #Object,
	#instVars : [
		'continueStatement'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTContinueStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTContinueStatement: self
]

{ #category : #accessing }
PWBASTContinueStatement >> continueStatement [
	^ continueStatement
]

{ #category : #accessing }
PWBASTContinueStatement >> continueStatement: anObject [
	continueStatement := anObject
]
