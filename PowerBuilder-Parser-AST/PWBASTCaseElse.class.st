Class {
	#name : #PWBASTCaseElse,
	#superclass : #Object,
	#instVars : [
		'statements'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTCaseElse >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCaseElse: self
]

{ #category : #accessing }
PWBASTCaseElse >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTCaseElse >> statements: anObject [
	statements := anObject
]
