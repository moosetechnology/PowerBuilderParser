Class {
	#name : #MrlPWBASTWithinClause,
	#superclass : #Object,
	#instVars : [
		'customType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTWithinClause >> = anObject [
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
MrlPWBASTWithinClause >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTWithinClause: self
]

{ #category : #accessing }
MrlPWBASTWithinClause >> customType [
	^ customType
]

{ #category : #accessing }
MrlPWBASTWithinClause >> customType: anObject [
	customType := anObject
]

{ #category : #comparing }
MrlPWBASTWithinClause >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ customType hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTWithinClause >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTWithinClause >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTWithinClause >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTWithinClause >> stopPosition: anObject [
	stopPosition := anObject
]
