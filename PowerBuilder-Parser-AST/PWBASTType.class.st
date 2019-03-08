Class {
	#name : #PWBASTType,
	#superclass : #Object,
	#instVars : [
		'type'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTType: self
]

{ #category : #accessing }
PWBASTType >> type [
	^ type
]

{ #category : #accessing }
PWBASTType >> type: anObject [
	type := anObject
]
