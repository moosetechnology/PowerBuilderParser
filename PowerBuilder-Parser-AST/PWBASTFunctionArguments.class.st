Class {
	#name : #PWBASTFunctionArguments,
	#superclass : #Object,
	#instVars : [
		'functionArguments'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTFunctionArguments >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFunctionArguments: self
]

{ #category : #accessing }
PWBASTFunctionArguments >> functionArguments [
	^ functionArguments
]

{ #category : #accessing }
PWBASTFunctionArguments >> functionArguments: anObject [
	functionArguments := anObject
]
