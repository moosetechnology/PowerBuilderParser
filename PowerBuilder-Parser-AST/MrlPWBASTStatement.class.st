Class {
	#name : #MrlPWBASTStatement,
	#superclass : #Object,
	#instVars : [
		'statement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTStatement >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ statement = anObject statement
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTStatement: self
]

{ #category : #comparing }
MrlPWBASTStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ statement hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTStatement >> statement [
	^ statement
]

{ #category : #accessing }
MrlPWBASTStatement >> statement: anObject [
	statement := anObject
]

{ #category : #accessing }
MrlPWBASTStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTStatement >> stopPosition: anObject [
	stopPosition := anObject
]
