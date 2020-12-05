Class {
	#name : #PWBASTCreateInstruction,
	#superclass : #Object,
	#instVars : [
		'variable',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTCreateInstruction >> = anObject [
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
PWBASTCreateInstruction >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCreateInstruction: self
]

{ #category : #comparing }
PWBASTCreateInstruction >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ variable hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTCreateInstruction >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCreateInstruction >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCreateInstruction >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCreateInstruction >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTCreateInstruction >> variable [
	^ variable
]

{ #category : #accessing }
PWBASTCreateInstruction >> variable: anObject [
	variable := anObject
]
