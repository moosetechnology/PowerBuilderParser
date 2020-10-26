Class {
	#name : #MrlPWBASTCreateInstruction,
	#superclass : #Object,
	#instVars : [
		'variable',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTCreateInstruction >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ variable = anObject variable
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTCreateInstruction >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTCreateInstruction: self
]

{ #category : #comparing }
MrlPWBASTCreateInstruction >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ variable hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTCreateInstruction >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTCreateInstruction >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTCreateInstruction >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTCreateInstruction >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTCreateInstruction >> variable [
	^ variable
]

{ #category : #accessing }
MrlPWBASTCreateInstruction >> variable: anObject [
	variable := anObject
]
