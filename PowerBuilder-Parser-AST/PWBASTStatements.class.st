Class {
	#name : #PWBASTStatements,
	#superclass : #Object,
	#instVars : [
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTStatements >> = anObject [
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
PWBASTStatements >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTStatements: self
]

{ #category : #comparing }
PWBASTStatements >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ statements hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTStatements >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTStatements >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTStatements >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTStatements >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTStatements >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTStatements >> stopPosition: anObject [
	stopPosition := anObject
]
