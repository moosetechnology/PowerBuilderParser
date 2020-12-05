Class {
	#name : #PWBASTPrepareSQL,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTPrepareSQL >> = anObject [
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
PWBASTPrepareSQL >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTPrepareSQL: self
]

{ #category : #comparing }
PWBASTPrepareSQL >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTPrepareSQL >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTPrepareSQL >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTPrepareSQL >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTPrepareSQL >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTPrepareSQL >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTPrepareSQL >> stopPosition: anObject [
	stopPosition := anObject
]
