Class {
	#name : #PWBASTBasicType,
	#superclass : #Object,
	#instVars : [
		'basicType'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTBasicType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTBasicType: self
]

{ #category : #accessing }
PWBASTBasicType >> basicType [
	^ basicType
]

{ #category : #accessing }
PWBASTBasicType >> basicType: anObject [
	basicType := anObject
]
