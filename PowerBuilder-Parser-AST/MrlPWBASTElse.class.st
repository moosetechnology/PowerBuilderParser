Class {
	#name : #MrlPWBASTElse,
	#superclass : #Object,
	#instVars : [
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTElse >> = anObject [
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
MrlPWBASTElse >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTElse: self
]

{ #category : #comparing }
MrlPWBASTElse >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ statements hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTElse >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTElse >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTElse >> statements [
	^ statements
]

{ #category : #accessing }
MrlPWBASTElse >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
MrlPWBASTElse >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTElse >> stopPosition: anObject [
	stopPosition := anObject
]
