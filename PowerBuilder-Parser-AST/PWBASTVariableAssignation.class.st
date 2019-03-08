Class {
	#name : #PWBASTVariableAssignation,
	#superclass : #Object,
	#instVars : [
		'variable',
		'assignation'
	],
	#category : #'PowerBuilder-Parser-AST'
}

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

{ #category : #accessing }
PWBASTVariableAssignation >> variable [
	^ variable
]

{ #category : #accessing }
PWBASTVariableAssignation >> variable: anObject [
	variable := anObject
]
