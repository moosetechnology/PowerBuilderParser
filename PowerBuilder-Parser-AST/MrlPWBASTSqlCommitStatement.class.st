Class {
	#name : #MrlPWBASTSqlCommitStatement,
	#superclass : #Object,
	#instVars : [
		'usingClause',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTSqlCommitStatement >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ usingClause = anObject usingClause
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTSqlCommitStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTSqlCommitStatement: self
]

{ #category : #comparing }
MrlPWBASTSqlCommitStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ usingClause hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTSqlCommitStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTSqlCommitStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTSqlCommitStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTSqlCommitStatement >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTSqlCommitStatement >> usingClause [
	^ usingClause
]

{ #category : #accessing }
MrlPWBASTSqlCommitStatement >> usingClause: anObject [
	usingClause := anObject
]
