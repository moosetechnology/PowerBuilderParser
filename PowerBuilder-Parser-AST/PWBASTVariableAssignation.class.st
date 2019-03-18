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
