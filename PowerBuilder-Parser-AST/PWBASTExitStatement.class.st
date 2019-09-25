Class {
	#name : #PWBASTExitStatement,
	#superclass : #Object,
	#instVars : [
		'exitStatement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTExitStatement >> = anObject [
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
PWBASTExitStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTExitStatement: self
]

{ #category : #accessing }
PWBASTExitStatement >> exitStatement [
	^ exitStatement
]

{ #category : #accessing }
PWBASTExitStatement >> exitStatement: anObject [
	exitStatement := anObject
]

{ #category : #comparing }
PWBASTExitStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ exitStatement hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTExitStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTExitStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTExitStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTExitStatement >> stopPosition: anObject [
	stopPosition := anObject
]
