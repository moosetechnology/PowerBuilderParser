Class {
	#name : #MrlPWBASTAssignation,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTAssignation >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expression = anObject expression
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTAssignation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTAssignation: self
]

{ #category : #accessing }
MrlPWBASTAssignation >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTAssignation >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
MrlPWBASTAssignation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTAssignation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTAssignation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTAssignation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTAssignation >> stopPosition: anObject [
	stopPosition := anObject
]
