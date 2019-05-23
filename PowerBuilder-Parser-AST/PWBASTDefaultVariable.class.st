Class {
	#name : #PWBASTDefaultVariable,
	#superclass : #Object,
	#instVars : [
		'defaultVariable',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTDefaultVariable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDefaultVariable: self
]

{ #category : #accessing }
PWBASTDefaultVariable >> defaultVariable [
	^ defaultVariable
]

{ #category : #accessing }
PWBASTDefaultVariable >> defaultVariable: anObject [
	defaultVariable := anObject
]

{ #category : #accessing }
PWBASTDefaultVariable >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDefaultVariable >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDefaultVariable >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDefaultVariable >> stopPosition: anObject [
	stopPosition := anObject
]
