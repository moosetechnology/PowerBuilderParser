Class {
	#name : #PWBASTParametrizedType,
	#superclass : #Object,
	#instVars : [
		'parametrizedType'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTParametrizedType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTParametrizedType: self
]

{ #category : #accessing }
PWBASTParametrizedType >> parametrizedType [
	^ parametrizedType
]

{ #category : #accessing }
PWBASTParametrizedType >> parametrizedType: anObject [
	parametrizedType := anObject
]
