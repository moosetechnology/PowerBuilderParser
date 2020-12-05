Class {
	#name : #PWBASTSqlQuery,
	#superclass : #Object,
	#instVars : [
		'sqlQuery',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTSqlQuery >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ sqlQuery = anObject sqlQuery
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTSqlQuery >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSqlQuery: self
]

{ #category : #comparing }
PWBASTSqlQuery >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ sqlQuery hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTSqlQuery >> sqlQuery [
	^ sqlQuery
]

{ #category : #accessing }
PWBASTSqlQuery >> sqlQuery: anObject [
	sqlQuery := anObject
]

{ #category : #accessing }
PWBASTSqlQuery >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSqlQuery >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSqlQuery >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSqlQuery >> stopPosition: anObject [
	stopPosition := anObject
]
