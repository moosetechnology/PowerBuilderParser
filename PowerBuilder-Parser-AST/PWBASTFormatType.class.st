Class {
	#name : #PWBASTFormatType,
	#superclass : #Object,
	#instVars : [
		'formatType'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTFormatType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFormatType: self
]

{ #category : #accessing }
PWBASTFormatType >> formatType [
	^ formatType
]

{ #category : #accessing }
PWBASTFormatType >> formatType: anObject [
	formatType := anObject
]
