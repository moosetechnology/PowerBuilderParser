Class {
	#name : #PWBASTFormatType,
	#superclass : #Object,
	#instVars : [
		'formatType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTFormatType >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ formatType = anObject formatType
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTFormatType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFormatType: self
]

{ #category : #accessing }
PWBASTFormatType >> formatType [
	^ formatType
]

{ #category : #accessing }
PWBASTFormatType >> formatType: anObject [
	formatType := anObject
]

{ #category : #comparing }
PWBASTFormatType >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ formatType hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTFormatType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTFormatType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTFormatType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTFormatType >> stopPosition: anObject [
	stopPosition := anObject
]
