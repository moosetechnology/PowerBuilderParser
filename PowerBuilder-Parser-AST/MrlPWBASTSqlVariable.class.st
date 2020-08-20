Class {
	#name : #MrlPWBASTSqlVariable,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTSqlVariable >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ identifier = anObject identifier
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTSqlVariable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTSqlVariable: self
]

{ #category : #comparing }
MrlPWBASTSqlVariable >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTSqlVariable >> identifier [
	^ identifier
]

{ #category : #accessing }
MrlPWBASTSqlVariable >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
MrlPWBASTSqlVariable >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTSqlVariable >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTSqlVariable >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTSqlVariable >> stopPosition: anObject [
	stopPosition := anObject
]
