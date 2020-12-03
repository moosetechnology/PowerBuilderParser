Class {
	#name : #MrlPWBASTArgumentOption,
	#superclass : #Object,
	#instVars : [
		'argumentOption',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTArgumentOption >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ argumentOption = anObject argumentOption
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #accessing }
MrlPWBASTArgumentOption >> argumentOption [
	^ argumentOption
]

{ #category : #accessing }
MrlPWBASTArgumentOption >> argumentOption: anObject [
	argumentOption := anObject
]

{ #category : #comparing }
MrlPWBASTArgumentOption >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ argumentOption hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTArgumentOption >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTArgumentOption >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTArgumentOption >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTArgumentOption >> stopPosition: anObject [
	stopPosition := anObject
]
