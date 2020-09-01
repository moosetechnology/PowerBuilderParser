Class {
	#name : #MrlPWBASTContinueStatement,
	#superclass : #Object,
	#instVars : [
		'continueStatement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTContinueStatement >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ continueStatement = anObject continueStatement
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTContinueStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTContinueStatement: self
]

{ #category : #accessing }
MrlPWBASTContinueStatement >> continueStatement [
	^ continueStatement
]

{ #category : #accessing }
MrlPWBASTContinueStatement >> continueStatement: anObject [
	continueStatement := anObject
]

{ #category : #comparing }
MrlPWBASTContinueStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ continueStatement hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTContinueStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTContinueStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTContinueStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTContinueStatement >> stopPosition: anObject [
	stopPosition := anObject
]
