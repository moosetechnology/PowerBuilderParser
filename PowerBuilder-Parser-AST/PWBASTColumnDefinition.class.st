Class {
	#name : #PWBASTColumnDefinition,
	#superclass : #Object,
	#instVars : [
		'options',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTColumnDefinition >> = anObject [
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
PWBASTColumnDefinition >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTColumnDefinition: self
]

{ #category : #comparing }
PWBASTColumnDefinition >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ options hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTColumnDefinition >> options [
	^ options
]

{ #category : #accessing }
PWBASTColumnDefinition >> options: anObject [
	options := anObject
]

{ #category : #accessing }
PWBASTColumnDefinition >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTColumnDefinition >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTColumnDefinition >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTColumnDefinition >> stopPosition: anObject [
	stopPosition := anObject
]
