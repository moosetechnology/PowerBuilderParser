Class {
	#name : #MrlPWBASTSqlQuery,
	#superclass : #Object,
	#instVars : [
		'sqlQuery',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTSqlQuery >> = anObject [
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
MrlPWBASTSqlQuery >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTSqlQuery: self
]

{ #category : #comparing }
MrlPWBASTSqlQuery >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ sqlQuery hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTSqlQuery >> sqlQuery [
	^ sqlQuery
]

{ #category : #accessing }
MrlPWBASTSqlQuery >> sqlQuery: anObject [
	sqlQuery := anObject
]

{ #category : #accessing }
MrlPWBASTSqlQuery >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTSqlQuery >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTSqlQuery >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTSqlQuery >> stopPosition: anObject [
	stopPosition := anObject
]
