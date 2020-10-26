Class {
	#name : #MrlPWBASTStatements,
	#superclass : #Object,
	#instVars : [
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTStatements >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ statements = anObject statements
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTStatements >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTStatements: self
]

{ #category : #comparing }
MrlPWBASTStatements >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ statements hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTStatements >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTStatements >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTStatements >> statements [
	^ statements
]

{ #category : #accessing }
MrlPWBASTStatements >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
MrlPWBASTStatements >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTStatements >> stopPosition: anObject [
	stopPosition := anObject
]
