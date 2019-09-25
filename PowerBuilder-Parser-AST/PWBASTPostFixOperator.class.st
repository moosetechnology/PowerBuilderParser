Class {
	#name : #PWBASTPostFixOperator,
	#superclass : #Object,
	#instVars : [
		'access',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTPostFixOperator >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ access = anObject access
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTPostFixOperator >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTPostFixOperator: self
]

{ #category : #accessing }
PWBASTPostFixOperator >> access [
	^ access
]

{ #category : #accessing }
PWBASTPostFixOperator >> access: anObject [
	access := anObject
]

{ #category : #comparing }
PWBASTPostFixOperator >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ access hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTPostFixOperator >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTPostFixOperator >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTPostFixOperator >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTPostFixOperator >> stopPosition: anObject [
	stopPosition := anObject
]
