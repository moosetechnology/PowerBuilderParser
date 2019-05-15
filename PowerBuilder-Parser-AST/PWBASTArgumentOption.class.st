Class {
	#name : #PWBASTArgumentOption,
	#superclass : #Object,
	#instVars : [
		'argumentOption'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTArgumentOption >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArgumentOption: self
]

{ #category : #accessing }
PWBASTArgumentOption >> argumentOption [
	^ argumentOption
]

{ #category : #accessing }
PWBASTArgumentOption >> argumentOption: anObject [
	argumentOption := anObject
]
