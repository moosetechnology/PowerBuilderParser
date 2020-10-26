Class {
	#name : #MrlPWBASTIfStatement,
	#superclass : #Object,
	#instVars : [
		'ifStatement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTIfStatement >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ ifStatement = anObject ifStatement
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTIfStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTIfStatement: self
]

{ #category : #comparing }
MrlPWBASTIfStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ ifStatement hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTIfStatement >> ifStatement [
	^ ifStatement
]

{ #category : #accessing }
MrlPWBASTIfStatement >> ifStatement: anObject [
	ifStatement := anObject
]

{ #category : #accessing }
MrlPWBASTIfStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTIfStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTIfStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTIfStatement >> stopPosition: anObject [
	stopPosition := anObject
]
