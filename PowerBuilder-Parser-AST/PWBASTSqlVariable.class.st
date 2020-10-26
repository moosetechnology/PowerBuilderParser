Class {
	#name : #PWBASTSqlVariable,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTSqlVariable >> = anObject [
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
PWBASTSqlVariable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSqlVariable: self
]

{ #category : #comparing }
PWBASTSqlVariable >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTSqlVariable >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTSqlVariable >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTSqlVariable >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSqlVariable >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSqlVariable >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSqlVariable >> stopPosition: anObject [
	stopPosition := anObject
]
