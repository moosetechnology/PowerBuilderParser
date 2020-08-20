Class {
	#name : #MrlPWBASTBehaviouralOption,
	#superclass : #Object,
	#instVars : [
		'behaviouralOption',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTBehaviouralOption >> = anObject [
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
MrlPWBASTBehaviouralOption >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTBehaviouralOption: self
]

{ #category : #accessing }
MrlPWBASTBehaviouralOption >> behaviouralOption [
	^ behaviouralOption
]

{ #category : #accessing }
MrlPWBASTBehaviouralOption >> behaviouralOption: anObject [
	behaviouralOption := anObject
]

{ #category : #comparing }
MrlPWBASTBehaviouralOption >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ behaviouralOption hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTBehaviouralOption >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTBehaviouralOption >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTBehaviouralOption >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTBehaviouralOption >> stopPosition: anObject [
	stopPosition := anObject
]
