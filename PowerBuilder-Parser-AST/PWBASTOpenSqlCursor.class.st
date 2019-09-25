Class {
	#name : #PWBASTOpenSqlCursor,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTOpenSqlCursor >> = anObject [
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
PWBASTOpenSqlCursor >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTOpenSqlCursor: self
]

{ #category : #comparing }
PWBASTOpenSqlCursor >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTOpenSqlCursor >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTOpenSqlCursor >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTOpenSqlCursor >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTOpenSqlCursor >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTOpenSqlCursor >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTOpenSqlCursor >> stopPosition: anObject [
	stopPosition := anObject
]
