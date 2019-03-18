Class {
	#name : #PWBASTCreateInstruction,
	#superclass : #Object,
	#instVars : [
		'variable',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTCreateInstruction >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCreateInstruction: self
]

{ #category : #accessing }
PWBASTCreateInstruction >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCreateInstruction >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCreateInstruction >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCreateInstruction >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTCreateInstruction >> variable [
	^ variable
]

{ #category : #accessing }
PWBASTCreateInstruction >> variable: anObject [
	variable := anObject
]
