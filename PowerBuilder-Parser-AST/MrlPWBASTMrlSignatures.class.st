Class {
	#name : #MrlPWBASTMrlSignatures,
	#superclass : #Object,
	#instVars : [
		'mrlSignatures',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTMrlSignatures >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ mrlSignatures = anObject mrlSignatures
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTMrlSignatures >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTMrlSignatures: self
]

{ #category : #comparing }
MrlPWBASTMrlSignatures >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ mrlSignatures hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTMrlSignatures >> mrlSignatures [
	^ mrlSignatures
]

{ #category : #accessing }
MrlPWBASTMrlSignatures >> mrlSignatures: anObject [
	mrlSignatures := anObject
]

{ #category : #accessing }
MrlPWBASTMrlSignatures >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTMrlSignatures >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTMrlSignatures >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTMrlSignatures >> stopPosition: anObject [
	stopPosition := anObject
]
