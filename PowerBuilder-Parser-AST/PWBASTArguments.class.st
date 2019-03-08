Class {
	#name : #PWBASTArguments,
	#superclass : #Object,
	#instVars : [
		'arguments'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTArguments >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArguments: self
]

{ #category : #accessing }
PWBASTArguments >> arguments [
	^ arguments
]

{ #category : #accessing }
PWBASTArguments >> arguments: anObject [
	arguments := anObject
]
