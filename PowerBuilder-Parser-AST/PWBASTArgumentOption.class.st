Class {
	#name : #PWBASTArgumentOption,
	#superclass : #Object,
	#instVars : [
		'argumentOption',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTArgumentOption >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ argumentOption = anObject argumentOption
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTArgumentOption >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArgumentOption: self
]

{ #category : #accessing }
PWBASTArgumentOption >> argumentOption [
	^ argumentOption
]

{ #category : #accessing }
PWBASTArgumentOption >> argumentOption: anObject [
	argumentOption := anObject
]

{ #category : #comparing }
PWBASTArgumentOption >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ argumentOption hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTArgumentOption >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTArgumentOption >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTArgumentOption >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTArgumentOption >> stopPosition: anObject [
	stopPosition := anObject
]
