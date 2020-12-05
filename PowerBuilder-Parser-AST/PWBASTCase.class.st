Class {
	#name : #PWBASTCase,
	#superclass : #Object,
	#instVars : [
		'case',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTCase >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ case = anObject case
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTCase >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCase: self
]

{ #category : #accessing }
PWBASTCase >> case [
	^ case
]

{ #category : #accessing }
PWBASTCase >> case: anObject [
	case := anObject
]

{ #category : #comparing }
PWBASTCase >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ case hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTCase >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCase >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCase >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCase >> stopPosition: anObject [
	stopPosition := anObject
]
