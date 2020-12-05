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

{ #category : #comparing }
PWBASTColumn >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ columnDefinition = anObject columnDefinition
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

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

{ #category : #comparing }
PWBASTColumn >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ columnDefinition hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
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
