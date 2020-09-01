Class {
	#name : #MrlPWBASTMrlInvocationLine,
	#superclass : #Object,
	#instVars : [
		'mrlInvocationLines',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTMrlInvocationLine >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ mrlInvocationLines = anObject mrlInvocationLines
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTMrlInvocationLine >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTMrlInvocationLine: self
]

{ #category : #comparing }
MrlPWBASTMrlInvocationLine >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ mrlInvocationLines hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTMrlInvocationLine >> mrlInvocationLines [
	^ mrlInvocationLines
]

{ #category : #accessing }
MrlPWBASTMrlInvocationLine >> mrlInvocationLines: anObject [
	mrlInvocationLines := anObject
]

{ #category : #accessing }
MrlPWBASTMrlInvocationLine >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTMrlInvocationLine >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTMrlInvocationLine >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTMrlInvocationLine >> stopPosition: anObject [
	stopPosition := anObject
]
