Class {
	#name : #PWBASTFinallyBlock,
	#superclass : #Object,
	#instVars : [
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTFinallyBlock >> = anObject [
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
PWBASTFinallyBlock >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFinallyBlock: self
]

{ #category : #comparing }
PWBASTFinallyBlock >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ statements hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTFinallyBlock >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTFinallyBlock >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTFinallyBlock >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTFinallyBlock >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTFinallyBlock >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTFinallyBlock >> stopPosition: anObject [
	stopPosition := anObject
]
