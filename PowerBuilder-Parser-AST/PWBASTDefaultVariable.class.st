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

{ #category : #comparing }
PWBASTDefaultVariable >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ defaultVariable = anObject defaultVariable
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

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

{ #category : #comparing }
PWBASTDefaultVariable >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ defaultVariable hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
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
