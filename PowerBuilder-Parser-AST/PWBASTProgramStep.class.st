Class {
	#name : #PWBASTProgramStep,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTProgramStep >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ identifier = anObject identifier
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTProgramStep >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTProgramStep: self
]

{ #category : #comparing }
PWBASTProgramStep >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTProgramStep >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTProgramStep >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTProgramStep >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTProgramStep >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTProgramStep >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTProgramStep >> stopPosition: anObject [
	stopPosition := anObject
]
