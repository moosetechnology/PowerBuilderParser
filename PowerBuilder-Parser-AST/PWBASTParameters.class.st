Class {
	#name : #PWBASTParameters,
	#superclass : #Object,
	#instVars : [
		'options',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTParameters >> = anObject [
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
PWBASTParameters >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTParameters: self
]

{ #category : #comparing }
PWBASTParameters >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ options hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTParameters >> options [
	^ options
]

{ #category : #accessing }
PWBASTParameters >> options: anObject [
	options := anObject
]

{ #category : #accessing }
PWBASTParameters >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTParameters >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTParameters >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTParameters >> stopPosition: anObject [
	stopPosition := anObject
]
