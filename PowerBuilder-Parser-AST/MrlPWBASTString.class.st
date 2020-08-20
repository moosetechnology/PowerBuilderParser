Class {
	#name : #MrlPWBASTString,
	#superclass : #Object,
	#instVars : [
		'string',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTString >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ string = anObject string
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTString >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTString: self
]

{ #category : #comparing }
MrlPWBASTString >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ string hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTString >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTString >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTString >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTString >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTString >> string [
	^ string
]

{ #category : #accessing }
MrlPWBASTString >> string: anObject [
	string := anObject
]
