Class {
	#name : #PWBASTSqlCommitStatement,
	#superclass : #Object,
	#instVars : [
		'usingClause',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTSqlCommitStatement >> = anObject [
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
PWBASTSqlCommitStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSqlCommitStatement: self
]

{ #category : #comparing }
PWBASTSqlCommitStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ usingClause hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTSqlCommitStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSqlCommitStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSqlCommitStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSqlCommitStatement >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTSqlCommitStatement >> usingClause [
	^ usingClause
]

{ #category : #accessing }
PWBASTSqlCommitStatement >> usingClause: anObject [
	usingClause := anObject
]
