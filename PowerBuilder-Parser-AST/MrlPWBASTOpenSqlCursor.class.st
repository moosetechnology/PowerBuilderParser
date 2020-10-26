Class {
	#name : #MrlPWBASTOpenSqlCursor,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'descriptor',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTOpenSqlCursor >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ identifier = anObject identifier
		and: [ descriptor = anObject descriptor
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
MrlPWBASTOpenSqlCursor >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTOpenSqlCursor: self
]

{ #category : #accessing }
MrlPWBASTOpenSqlCursor >> descriptor [
	^ descriptor
]

{ #category : #accessing }
MrlPWBASTOpenSqlCursor >> descriptor: anObject [
	descriptor := anObject
]

{ #category : #comparing }
MrlPWBASTOpenSqlCursor >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor:
			(descriptor hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTOpenSqlCursor >> identifier [
	^ identifier
]

{ #category : #accessing }
MrlPWBASTOpenSqlCursor >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
MrlPWBASTOpenSqlCursor >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTOpenSqlCursor >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTOpenSqlCursor >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTOpenSqlCursor >> stopPosition: anObject [
	stopPosition := anObject
]
