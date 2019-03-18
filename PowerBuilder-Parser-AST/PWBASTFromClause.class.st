Class {
	#name : #PWBASTFromClause,
	#superclass : #Object,
	#instVars : [
		'customType',
		'startPosition',
		'stopPosition'
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

{ #category : #accessing }
PWBASTFromClause >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTFromClause >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTFromClause >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTFromClause >> stopPosition: anObject [
	stopPosition := anObject
]
