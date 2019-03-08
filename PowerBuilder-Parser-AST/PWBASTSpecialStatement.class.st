Class {
	#name : #PWBASTSpecialStatement,
	#superclass : #Object,
	#instVars : [
		'specialStatement'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTSpecialStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSpecialStatement: self
]

{ #category : #accessing }
PWBASTSpecialStatement >> specialStatement [
	^ specialStatement
]

{ #category : #accessing }
PWBASTSpecialStatement >> specialStatement: anObject [
	specialStatement := anObject
]
