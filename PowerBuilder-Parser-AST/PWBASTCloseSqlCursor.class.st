Class {
	#name : #PWBASTCloseSqlCursor,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTCloseSqlCursor >> = anObject [
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
PWBASTCloseSqlCursor >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCloseSqlCursor: self
]

{ #category : #comparing }
PWBASTCloseSqlCursor >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTCloseSqlCursor >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTCloseSqlCursor >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTCloseSqlCursor >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCloseSqlCursor >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCloseSqlCursor >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCloseSqlCursor >> stopPosition: anObject [
	stopPosition := anObject
]
