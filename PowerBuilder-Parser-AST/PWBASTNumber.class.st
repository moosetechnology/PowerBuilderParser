Class {
	#name : #PWBASTNumber,
	#superclass : #Object,
	#instVars : [
		'number'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTNumber >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTNumber: self
]

{ #category : #accessing }
PWBASTNumber >> number [
	^ number
]

{ #category : #accessing }
PWBASTNumber >> number: anObject [
	number := anObject
]
