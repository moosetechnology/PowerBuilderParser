Class {
	#name : #PWBASTSqlRollbackStatement,
	#superclass : #Object,
	#instVars : [
		'usingClause',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTSqlRollbackStatement >> = anObject [
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
PWBASTSqlRollbackStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSqlRollbackStatement: self
]

{ #category : #comparing }
PWBASTSqlRollbackStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ usingClause hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTSqlRollbackStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSqlRollbackStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSqlRollbackStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSqlRollbackStatement >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTSqlRollbackStatement >> usingClause [
	^ usingClause
]

{ #category : #accessing }
PWBASTSqlRollbackStatement >> usingClause: anObject [
	usingClause := anObject
]
