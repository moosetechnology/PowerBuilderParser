Class {
	#name : #PWBASTConstant,
	#superclass : #Object,
	#instVars : [
		'constant'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTConstant >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTConstant: self
]

{ #category : #accessing }
PWBASTConstant >> constant [
	^ constant
]

{ #category : #accessing }
PWBASTConstant >> constant: anObject [
	constant := anObject
]
