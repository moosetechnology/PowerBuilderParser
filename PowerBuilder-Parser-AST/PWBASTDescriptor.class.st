Class {
	#name : #PWBASTDescriptor,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTDescriptor >> = anObject [
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
PWBASTDescriptor >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDescriptor: self
]

{ #category : #accessing }
PWBASTDescriptor >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTDescriptor >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTDescriptor >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTDescriptor >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDescriptor >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDescriptor >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDescriptor >> stopPosition: anObject [
	stopPosition := anObject
]
