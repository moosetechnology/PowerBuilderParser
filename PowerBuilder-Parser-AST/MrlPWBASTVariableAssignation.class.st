Class {
	#name : #MrlPWBASTVariableAssignation,
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
MrlPWBASTVariableAssignation >> = anObject [
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
MrlPWBASTVariableAssignation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTVariableAssignation: self
]

{ #category : #accessing }
MrlPWBASTVariableAssignation >> assignation [
	^ assignation
]

{ #category : #accessing }
MrlPWBASTVariableAssignation >> assignation: anObject [
	assignation := anObject
]

{ #category : #comparing }
MrlPWBASTVariableAssignation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ variable hash
		bitXor:
			(assignation hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTVariableAssignation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTVariableAssignation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTVariableAssignation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTVariableAssignation >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTVariableAssignation >> variable [
	^ variable
]

{ #category : #accessing }
MrlPWBASTVariableAssignation >> variable: anObject [
	variable := anObject
]
