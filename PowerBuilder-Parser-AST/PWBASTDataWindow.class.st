Class {
	#name : #PWBASTDataWindow,
	#superclass : #Object,
	#instVars : [
		'parameters',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTDataWindow >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ parameters = anObject parameters
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTDataWindow >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDataWindow: self
]

{ #category : #comparing }
PWBASTDataWindow >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ parameters hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTDataWindow >> parameters [
	^ parameters
]

{ #category : #accessing }
PWBASTDataWindow >> parameters: anObject [
	parameters := anObject
]

{ #category : #accessing }
PWBASTDataWindow >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDataWindow >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDataWindow >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDataWindow >> stopPosition: anObject [
	stopPosition := anObject
]
