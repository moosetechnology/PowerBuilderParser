Class {
	#name : #PWBASTAssignationStatement,
	#superclass : #Object,
	#instVars : [
		'access',
		'assignation',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTAssignationStatement >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ access = anObject access
		and: [ assignation = anObject assignation
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTAssignationStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAssignationStatement: self
]

{ #category : #accessing }
PWBASTAssignationStatement >> access [
	^ access
]

{ #category : #accessing }
PWBASTAssignationStatement >> access: anObject [
	access := anObject
]

{ #category : #accessing }
PWBASTAssignationStatement >> assignation [
	^ assignation
]

{ #category : #accessing }
PWBASTAssignationStatement >> assignation: anObject [
	assignation := anObject
]

{ #category : #comparing }
PWBASTAssignationStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ access hash
		bitXor:
			(assignation hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTAssignationStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTAssignationStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTAssignationStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTAssignationStatement >> stopPosition: anObject [
	stopPosition := anObject
]
