Class {
	#name : #PWBASTBooleanValue,
	#superclass : #Object,
	#instVars : [
		'booleanValue'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTBooleanValue >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTBooleanValue: self
]

{ #category : #accessing }
PWBASTBooleanValue >> booleanValue [
	^ booleanValue
]

{ #category : #accessing }
PWBASTBooleanValue >> booleanValue: anObject [
	booleanValue := anObject
]
