Class {
	#name : #MrlPWBASTSqlRollbackStatement,
	#superclass : #Object,
	#instVars : [
		'usingClause',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTSqlRollbackStatement >> = anObject [
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
MrlPWBASTSqlRollbackStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTSqlRollbackStatement: self
]

{ #category : #comparing }
MrlPWBASTSqlRollbackStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ usingClause hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTSqlRollbackStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTSqlRollbackStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTSqlRollbackStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTSqlRollbackStatement >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTSqlRollbackStatement >> usingClause [
	^ usingClause
]

{ #category : #accessing }
MrlPWBASTSqlRollbackStatement >> usingClause: anObject [
	usingClause := anObject
]
