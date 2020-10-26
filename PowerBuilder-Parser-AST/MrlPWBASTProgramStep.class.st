Class {
	#name : #MrlPWBASTProgramStep,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTProgramStep >> = anObject [
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
MrlPWBASTProgramStep >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTProgramStep: self
]

{ #category : #comparing }
MrlPWBASTProgramStep >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTProgramStep >> identifier [
	^ identifier
]

{ #category : #accessing }
MrlPWBASTProgramStep >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
MrlPWBASTProgramStep >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTProgramStep >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTProgramStep >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTProgramStep >> stopPosition: anObject [
	stopPosition := anObject
]
