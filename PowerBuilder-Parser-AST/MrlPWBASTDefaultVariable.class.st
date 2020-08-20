Class {
	#name : #MrlPWBASTDefaultVariable,
	#superclass : #Object,
	#instVars : [
		'defaultVariable',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTDefaultVariable >> = anObject [
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
MrlPWBASTDefaultVariable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTDefaultVariable: self
]

{ #category : #accessing }
MrlPWBASTDefaultVariable >> defaultVariable [
	^ defaultVariable
]

{ #category : #accessing }
MrlPWBASTDefaultVariable >> defaultVariable: anObject [
	defaultVariable := anObject
]

{ #category : #comparing }
MrlPWBASTDefaultVariable >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ defaultVariable hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTDefaultVariable >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTDefaultVariable >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTDefaultVariable >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTDefaultVariable >> stopPosition: anObject [
	stopPosition := anObject
]
