Class {
	#name : #PWBASTMrlSignatures,
	#superclass : #Object,
	#instVars : [
		'mrlSignatures',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTMrlSignatures >> = anObject [
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
PWBASTMrlSignatures >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTMrlSignatures: self
]

{ #category : #comparing }
PWBASTMrlSignatures >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ mrlSignatures hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTMrlSignatures >> mrlSignatures [
	^ mrlSignatures
]

{ #category : #accessing }
PWBASTMrlSignatures >> mrlSignatures: anObject [
	mrlSignatures := anObject
]

{ #category : #accessing }
PWBASTMrlSignatures >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTMrlSignatures >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTMrlSignatures >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTMrlSignatures >> stopPosition: anObject [
	stopPosition := anObject
]
