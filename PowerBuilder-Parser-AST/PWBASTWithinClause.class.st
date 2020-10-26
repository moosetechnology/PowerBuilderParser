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

{ #category : #comparing }
PWBASTWithinClause >> = anObject [
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

{ #category : #comparing }
PWBASTWithinClause >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ customType hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
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
