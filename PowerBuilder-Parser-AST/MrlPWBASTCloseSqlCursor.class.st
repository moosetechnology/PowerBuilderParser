Class {
	#name : #MrlPWBASTCloseSqlCursor,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTCloseSqlCursor >> = anObject [
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
MrlPWBASTCloseSqlCursor >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTCloseSqlCursor: self
]

{ #category : #comparing }
MrlPWBASTCloseSqlCursor >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTCloseSqlCursor >> identifier [
	^ identifier
]

{ #category : #accessing }
MrlPWBASTCloseSqlCursor >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
MrlPWBASTCloseSqlCursor >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTCloseSqlCursor >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTCloseSqlCursor >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTCloseSqlCursor >> stopPosition: anObject [
	stopPosition := anObject
]
