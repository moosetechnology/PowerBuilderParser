Class {
	#name : #PWBASTVariable,
	#superclass : #Object,
	#instVars : [
		'this',
		'identifier',
		'arrayDefinition',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTVariable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTVariable: self
]

{ #category : #accessing }
PWBASTVariable >> arrayDefinition [
	^ arrayDefinition
]

{ #category : #accessing }
PWBASTVariable >> arrayDefinition: anObject [
	arrayDefinition := anObject
]

{ #category : #accessing }
PWBASTVariable >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTVariable >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTVariable >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTVariable >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTVariable >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTVariable >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTVariable >> this [
	^ this
]

{ #category : #accessing }
PWBASTVariable >> this: anObject [
	this := anObject
]
