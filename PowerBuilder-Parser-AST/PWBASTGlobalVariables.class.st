Class {
	#name : #PWBASTGlobalVariables,
	#superclass : #Object,
	#instVars : [
		'attributes',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTGlobalVariables >> = anObject [
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
PWBASTGlobalVariables >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTGlobalVariables: self
]

{ #category : #accessing }
PWBASTGlobalVariables >> attributes [
	^ attributes
]

{ #category : #accessing }
PWBASTGlobalVariables >> attributes: anObject [
	attributes := anObject
]

{ #category : #comparing }
PWBASTGlobalVariables >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ attributes hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTGlobalVariables >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTGlobalVariables >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTGlobalVariables >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTGlobalVariables >> stopPosition: anObject [
	stopPosition := anObject
]
