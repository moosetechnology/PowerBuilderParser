Class {
	#name : #MrlPWBASTCustomCallStatement,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTCustomCallStatement >> = anObject [
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
MrlPWBASTCustomCallStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTCustomCallStatement: self
]

{ #category : #comparing }
MrlPWBASTCustomCallStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTCustomCallStatement >> identifier [
	^ identifier
]

{ #category : #accessing }
MrlPWBASTCustomCallStatement >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
MrlPWBASTCustomCallStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTCustomCallStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTCustomCallStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTCustomCallStatement >> stopPosition: anObject [
	stopPosition := anObject
]
