Class {
	#name : #PWBASTOptions,
	#superclass : #Object,
	#instVars : [
		'options'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTOptions >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTOptions: self
]

{ #category : #accessing }
PWBASTOptions >> options [
	^ options
]

{ #category : #accessing }
PWBASTOptions >> options: anObject [
	options := anObject
]
