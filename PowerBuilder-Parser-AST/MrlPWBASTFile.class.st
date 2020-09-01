Class {
	#name : #MrlPWBASTFile,
	#superclass : #Object,
	#instVars : [
		'invocation',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTFile >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ invocation = anObject invocation
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTFile >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTFile: self
]

{ #category : #comparing }
MrlPWBASTFile >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ invocation hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTFile >> invocation [
	^ invocation
]

{ #category : #accessing }
MrlPWBASTFile >> invocation: anObject [
	invocation := anObject
]

{ #category : #accessing }
MrlPWBASTFile >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTFile >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTFile >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTFile >> stopPosition: anObject [
	stopPosition := anObject
]
