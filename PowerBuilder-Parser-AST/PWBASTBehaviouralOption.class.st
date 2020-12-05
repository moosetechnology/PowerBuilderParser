Class {
	#name : #PWBASTBehaviouralOption,
	#superclass : #Object,
	#instVars : [
		'behaviouralOption',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTBehaviouralOption >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ behaviouralOption = anObject behaviouralOption
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTBehaviouralOption >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTBehaviouralOption: self
]

{ #category : #accessing }
PWBASTBehaviouralOption >> behaviouralOption [
	^ behaviouralOption
]

{ #category : #accessing }
PWBASTBehaviouralOption >> behaviouralOption: anObject [
	behaviouralOption := anObject
]

{ #category : #comparing }
PWBASTBehaviouralOption >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ behaviouralOption hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTBehaviouralOption >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTBehaviouralOption >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTBehaviouralOption >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTBehaviouralOption >> stopPosition: anObject [
	stopPosition := anObject
]
