Class {
	#name : #MrlPWBASTFromClause,
	#superclass : #Object,
	#instVars : [
		'customType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTFromClause >> = anObject [
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
MrlPWBASTFromClause >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTFromClause: self
]

{ #category : #accessing }
MrlPWBASTFromClause >> customType [
	^ customType
]

{ #category : #accessing }
MrlPWBASTFromClause >> customType: anObject [
	customType := anObject
]

{ #category : #comparing }
MrlPWBASTFromClause >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ customType hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTFromClause >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTFromClause >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTFromClause >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTFromClause >> stopPosition: anObject [
	stopPosition := anObject
]
