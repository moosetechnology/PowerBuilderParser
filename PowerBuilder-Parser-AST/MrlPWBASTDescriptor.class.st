Class {
	#name : #MrlPWBASTDescriptor,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTDescriptor >> = anObject [
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
MrlPWBASTDescriptor >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTDescriptor: self
]

{ #category : #accessing }
MrlPWBASTDescriptor >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTDescriptor >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
MrlPWBASTDescriptor >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTDescriptor >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTDescriptor >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTDescriptor >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTDescriptor >> stopPosition: anObject [
	stopPosition := anObject
]
