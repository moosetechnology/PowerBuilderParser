Class {
	#name : #PWBASTMrlInvocationLine,
	#superclass : #Object,
	#instVars : [
		'mrlInvocationLines',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTMrlInvocationLine >> = anObject [
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
PWBASTMrlInvocationLine >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTMrlInvocationLine: self
]

{ #category : #comparing }
PWBASTMrlInvocationLine >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ mrlInvocationLines hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTMrlInvocationLine >> mrlInvocationLines [
	^ mrlInvocationLines
]

{ #category : #accessing }
PWBASTMrlInvocationLine >> mrlInvocationLines: anObject [
	mrlInvocationLines := anObject
]

{ #category : #accessing }
PWBASTMrlInvocationLine >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTMrlInvocationLine >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTMrlInvocationLine >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTMrlInvocationLine >> stopPosition: anObject [
	stopPosition := anObject
]
