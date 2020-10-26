Class {
	#name : #MrlPWBASTAssignationStatement,
	#superclass : #Object,
	#instVars : [
		'accessOrType',
		'expressionAction',
		'assignation',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTAssignationStatement >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ accessOrType = anObject accessOrType
		and: [ expressionAction = anObject expressionAction
				and: [ assignation = anObject assignation
						and: [ startPosition = anObject startPosition
								and: [ stopPosition = anObject stopPosition ] ] ] ]
]

{ #category : #visiting }
MrlPWBASTAssignationStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTAssignationStatement: self
]

{ #category : #accessing }
MrlPWBASTAssignationStatement >> accessOrType [
	^ accessOrType
]

{ #category : #accessing }
MrlPWBASTAssignationStatement >> accessOrType: anObject [
	accessOrType := anObject
]

{ #category : #accessing }
MrlPWBASTAssignationStatement >> assignation [
	^ assignation
]

{ #category : #accessing }
MrlPWBASTAssignationStatement >> assignation: anObject [
	assignation := anObject
]

{ #category : #accessing }
MrlPWBASTAssignationStatement >> expressionAction [
	^ expressionAction
]

{ #category : #accessing }
MrlPWBASTAssignationStatement >> expressionAction: anObject [
	expressionAction := anObject
]

{ #category : #comparing }
MrlPWBASTAssignationStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ accessOrType hash
		bitXor:
			(expressionAction hash
				bitXor:
					(assignation hash
						bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
MrlPWBASTAssignationStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTAssignationStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTAssignationStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTAssignationStatement >> stopPosition: anObject [
	stopPosition := anObject
]
