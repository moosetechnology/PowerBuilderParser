Class {
	#name : #PWBASTParameters,
	#superclass : #Object,
	#instVars : [
		'options'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTParameters >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTParameters: self
]

{ #category : #accessing }
PWBASTParameters >> options [
	^ options
]

{ #category : #accessing }
PWBASTParameters >> options: anObject [
	options := anObject
]
