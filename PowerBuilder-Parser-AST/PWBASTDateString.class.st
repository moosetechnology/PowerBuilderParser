Class {
	#name : #PWBASTDateString,
	#superclass : #Object,
	#instVars : [
		'dateString',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTDateString >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ dateString = anObject dateString
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTDateString >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDateString: self
]

{ #category : #accessing }
PWBASTDateString >> dateString [
	^ dateString
]

{ #category : #accessing }
PWBASTDateString >> dateString: anObject [
	dateString := anObject
]

{ #category : #comparing }
PWBASTDateString >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ dateString hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTDateString >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDateString >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDateString >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDateString >> stopPosition: anObject [
	stopPosition := anObject
]
