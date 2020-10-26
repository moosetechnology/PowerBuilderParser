Class {
	#name : #PWBASTVariableAssignation,
	#superclass : #Object,
	#instVars : [
		'variable',
		'assignation',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTVariableAssignation >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ variable = anObject variable
		and: [ assignation = anObject assignation
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTVariableAssignation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTVariableAssignation: self
]

{ #category : #accessing }
PWBASTVariableAssignation >> assignation [
	^ assignation
]

{ #category : #accessing }
PWBASTVariableAssignation >> assignation: anObject [
	assignation := anObject
]

{ #category : #comparing }
PWBASTVariableAssignation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ variable hash
		bitXor:
			(assignation hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTVariableAssignation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTVariableAssignation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTVariableAssignation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTVariableAssignation >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTVariableAssignation >> variable [
	^ variable
]

{ #category : #accessing }
PWBASTVariableAssignation >> variable: anObject [
	variable := anObject
]
