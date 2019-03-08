Class {
	#name : #PWBASTAttributes,
	#superclass : #Object,
	#instVars : [
		'attributeses'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTAttributes >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAttributes: self
]

{ #category : #accessing }
PWBASTAttributes >> attributeses [
	^ attributeses
]

{ #category : #accessing }
PWBASTAttributes >> attributeses: anObject [
	attributeses := anObject
]
