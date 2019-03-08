Class {
	#name : #PWBASTString,
	#superclass : #Object,
	#instVars : [
		'string'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTString >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTString: self
]

{ #category : #accessing }
PWBASTString >> string [
	^ string
]

{ #category : #accessing }
PWBASTString >> string: anObject [
	string := anObject
]
