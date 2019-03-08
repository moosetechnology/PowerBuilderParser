Class {
	#name : #PWBASTPostFixOperator,
	#superclass : #Object,
	#instVars : [
		'access'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTPostFixOperator >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTPostFixOperator: self
]

{ #category : #accessing }
PWBASTPostFixOperator >> access [
	^ access
]

{ #category : #accessing }
PWBASTPostFixOperator >> access: anObject [
	access := anObject
]
