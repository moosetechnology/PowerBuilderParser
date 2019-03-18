Class {
	#name : #PWBASTWithinClause,
	#superclass : #Object,
	#instVars : [
		'customType',
		'startPosition',
		'stopPosition'
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

{ #category : #accessing }
PWBASTWithinClause >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTWithinClause >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTWithinClause >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTWithinClause >> stopPosition: anObject [
	stopPosition := anObject
]
