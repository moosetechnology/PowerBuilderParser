Class {
	#name : #MrlPWBASTGlobalVariables,
	#superclass : #Object,
	#instVars : [
		'attributes',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTGlobalVariables >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ attributes = anObject attributes
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTGlobalVariables >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTGlobalVariables: self
]

{ #category : #accessing }
MrlPWBASTGlobalVariables >> attributes [
	^ attributes
]

{ #category : #accessing }
MrlPWBASTGlobalVariables >> attributes: anObject [
	attributes := anObject
]

{ #category : #comparing }
MrlPWBASTGlobalVariables >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ attributes hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTGlobalVariables >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTGlobalVariables >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTGlobalVariables >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTGlobalVariables >> stopPosition: anObject [
	stopPosition := anObject
]
