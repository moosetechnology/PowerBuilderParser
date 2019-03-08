Class {
	#name : #PWBASTFromClause,
	#superclass : #Object,
	#instVars : [
		'customType'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTFromClause >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFromClause: self
]

{ #category : #accessing }
PWBASTFromClause >> customType [
	^ customType
]

{ #category : #accessing }
PWBASTFromClause >> customType: anObject [
	customType := anObject
]
