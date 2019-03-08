Class {
	#name : #PWBASTWithinClause,
	#superclass : #Object,
	#instVars : [
		'customType'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTWithinClause >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTWithinClause: self
]

{ #category : #accessing }
PWBASTWithinClause >> customType [
	^ customType
]

{ #category : #accessing }
PWBASTWithinClause >> customType: anObject [
	customType := anObject
]
