Class {
	#name : #MrlPWBASTPrepareSQL,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTPrepareSQL >> = anObject [
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
MrlPWBASTPrepareSQL >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTPrepareSQL: self
]

{ #category : #comparing }
MrlPWBASTPrepareSQL >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTPrepareSQL >> identifier [
	^ identifier
]

{ #category : #accessing }
MrlPWBASTPrepareSQL >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
MrlPWBASTPrepareSQL >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTPrepareSQL >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTPrepareSQL >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTPrepareSQL >> stopPosition: anObject [
	stopPosition := anObject
]
