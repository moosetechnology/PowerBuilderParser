Class {
	#name : #MrlPWBASTElseOnLine,
	#superclass : #Object,
	#instVars : [
		'statement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTElseOnLine >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ statement = anObject statement
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTElseOnLine >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTElseOnLine: self
]

{ #category : #comparing }
MrlPWBASTElseOnLine >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ statement hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTElseOnLine >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTElseOnLine >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTElseOnLine >> statement [
	^ statement
]

{ #category : #accessing }
MrlPWBASTElseOnLine >> statement: anObject [
	statement := anObject
]

{ #category : #accessing }
MrlPWBASTElseOnLine >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTElseOnLine >> stopPosition: anObject [
	stopPosition := anObject
]
