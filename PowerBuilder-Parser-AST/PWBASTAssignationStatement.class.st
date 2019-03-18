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
