Class {
	#name : #PWBASTElse,
	#superclass : #Object,
	#instVars : [
		'statements'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTElse >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTElse: self
]

{ #category : #accessing }
PWBASTElse >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTElse >> statements: anObject [
	statements := anObject
]
