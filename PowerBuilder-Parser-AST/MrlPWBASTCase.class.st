Class {
	#name : #MrlPWBASTCase,
	#superclass : #Object,
	#instVars : [
		'case',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTCase >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ case = anObject case
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #accessing }
MrlPWBASTCase >> case [
	^ case
]

{ #category : #accessing }
MrlPWBASTCase >> case: anObject [
	case := anObject
]

{ #category : #comparing }
MrlPWBASTCase >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ case hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTCase >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTCase >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTCase >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTCase >> stopPosition: anObject [
	stopPosition := anObject
]
