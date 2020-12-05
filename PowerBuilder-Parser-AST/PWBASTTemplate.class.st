Class {
	#name : #PWBASTTemplate,
	#superclass : #Object,
	#instVars : [
		'options',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTTemplate >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ options = anObject options
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTTemplate >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTTemplate: self
]

{ #category : #comparing }
PWBASTTemplate >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ options hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTTemplate >> options [
	^ options
]

{ #category : #accessing }
PWBASTTemplate >> options: anObject [
	options := anObject
]

{ #category : #accessing }
PWBASTTemplate >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTTemplate >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTTemplate >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTTemplate >> stopPosition: anObject [
	stopPosition := anObject
]
