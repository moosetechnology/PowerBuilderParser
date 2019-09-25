Class {
	#name : #PWBASTAssignation,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTAssignation >> = anObject [
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
PWBASTAssignation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAssignation: self
]

{ #category : #accessing }
PWBASTAssignation >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTAssignation >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTAssignation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTAssignation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTAssignation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTAssignation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTAssignation >> stopPosition: anObject [
	stopPosition := anObject
]
