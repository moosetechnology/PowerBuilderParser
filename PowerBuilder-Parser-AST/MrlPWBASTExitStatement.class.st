Class {
	#name : #MrlPWBASTExitStatement,
	#superclass : #Object,
	#instVars : [
		'exitStatement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTExitStatement >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ exitStatement = anObject exitStatement
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTExitStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTExitStatement: self
]

{ #category : #accessing }
MrlPWBASTExitStatement >> exitStatement [
	^ exitStatement
]

{ #category : #accessing }
MrlPWBASTExitStatement >> exitStatement: anObject [
	exitStatement := anObject
]

{ #category : #comparing }
MrlPWBASTExitStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ exitStatement hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTExitStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTExitStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTExitStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTExitStatement >> stopPosition: anObject [
	stopPosition := anObject
]
