Class {
	#name : #MrlPWBASTFinallyBlock,
	#superclass : #Object,
	#instVars : [
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTFinallyBlock >> = anObject [
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
MrlPWBASTFinallyBlock >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTFinallyBlock: self
]

{ #category : #comparing }
MrlPWBASTFinallyBlock >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ statements hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTFinallyBlock >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTFinallyBlock >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTFinallyBlock >> statements [
	^ statements
]

{ #category : #accessing }
MrlPWBASTFinallyBlock >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
MrlPWBASTFinallyBlock >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTFinallyBlock >> stopPosition: anObject [
	stopPosition := anObject
]
