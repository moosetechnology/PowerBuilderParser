Class {
	#name : #PWBASTColumn,
	#superclass : #Object,
	#instVars : [
		'columnDefinition',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTColumn >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTColumn: self
]

{ #category : #accessing }
PWBASTColumn >> columnDefinition [
	^ columnDefinition
]

{ #category : #accessing }
PWBASTColumn >> columnDefinition: anObject [
	columnDefinition := anObject
]

{ #category : #accessing }
PWBASTColumn >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTColumn >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTColumn >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTColumn >> stopPosition: anObject [
	stopPosition := anObject
]
