Class {
	#name : #MrlPWBASTConstant,
	#superclass : #Object,
	#instVars : [
		'constant',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTConstant >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ constant = anObject constant
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTConstant >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTConstant: self
]

{ #category : #accessing }
MrlPWBASTConstant >> constant [
	^ constant
]

{ #category : #accessing }
MrlPWBASTConstant >> constant: anObject [
	constant := anObject
]

{ #category : #comparing }
MrlPWBASTConstant >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ constant hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTConstant >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTConstant >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTConstant >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTConstant >> stopPosition: anObject [
	stopPosition := anObject
]
