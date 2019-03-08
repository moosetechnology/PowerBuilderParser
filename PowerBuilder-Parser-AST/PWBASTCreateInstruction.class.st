Class {
	#name : #PWBASTCreateInstruction,
	#superclass : #Object,
	#instVars : [
		'variable'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTCreateInstruction >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCreateInstruction: self
]

{ #category : #accessing }
PWBASTCreateInstruction >> variable [
	^ variable
]

{ #category : #accessing }
PWBASTCreateInstruction >> variable: anObject [
	variable := anObject
]
