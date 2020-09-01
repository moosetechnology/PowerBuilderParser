Class {
	#name : #MrlPWBASTCustomType,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTCustomType >> = anObject [
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
MrlPWBASTCustomType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTCustomType: self
]

{ #category : #comparing }
MrlPWBASTCustomType >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTCustomType >> identifier [
	^ identifier
]

{ #category : #accessing }
MrlPWBASTCustomType >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
MrlPWBASTCustomType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTCustomType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTCustomType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTCustomType >> stopPosition: anObject [
	stopPosition := anObject
]
