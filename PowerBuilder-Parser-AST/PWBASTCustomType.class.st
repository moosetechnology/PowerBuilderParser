Class {
	#name : #PWBASTCustomType,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTCustomType >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ identifier = anObject identifier
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTCustomType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCustomType: self
]

{ #category : #comparing }
PWBASTCustomType >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTCustomType >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTCustomType >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTCustomType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCustomType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCustomType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCustomType >> stopPosition: anObject [
	stopPosition := anObject
]
