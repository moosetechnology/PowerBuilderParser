Class {
	#name : #MrlPWBASTGotoStatement,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTGotoStatement >> = anObject [
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
MrlPWBASTGotoStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTGotoStatement: self
]

{ #category : #comparing }
MrlPWBASTGotoStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTGotoStatement >> identifier [
	^ identifier
]

{ #category : #accessing }
MrlPWBASTGotoStatement >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
MrlPWBASTGotoStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTGotoStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTGotoStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTGotoStatement >> stopPosition: anObject [
	stopPosition := anObject
]
