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
