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

{ #category : #comparing }
PWBASTFromClause >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ customType = anObject customType
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

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

{ #category : #comparing }
PWBASTFromClause >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ customType hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
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
