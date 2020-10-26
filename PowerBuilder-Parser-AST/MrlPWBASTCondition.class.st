Class {
	#name : #MrlPWBASTCondition,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTCondition >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expression = anObject expression
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTCondition >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTCondition: self
]

{ #category : #accessing }
MrlPWBASTCondition >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTCondition >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
MrlPWBASTCondition >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTCondition >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTCondition >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTCondition >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTCondition >> stopPosition: anObject [
	stopPosition := anObject
]
