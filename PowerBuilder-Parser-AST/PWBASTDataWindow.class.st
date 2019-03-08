Class {
	#name : #PWBASTDataWindow,
	#superclass : #Object,
	#instVars : [
		'parameters'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTDataWindow >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDataWindow: self
]

{ #category : #accessing }
PWBASTDataWindow >> parameters [
	^ parameters
]

{ #category : #accessing }
PWBASTDataWindow >> parameters: anObject [
	parameters := anObject
]
