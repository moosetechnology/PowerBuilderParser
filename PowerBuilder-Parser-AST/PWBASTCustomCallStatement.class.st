Class {
	#name : #PWBASTCustomCallStatement,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTCustomCallStatement >> = anObject [
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
PWBASTCustomCallStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCustomCallStatement: self
]

{ #category : #comparing }
PWBASTCustomCallStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTCustomCallStatement >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTCustomCallStatement >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTCustomCallStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCustomCallStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCustomCallStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCustomCallStatement >> stopPosition: anObject [
	stopPosition := anObject
]
