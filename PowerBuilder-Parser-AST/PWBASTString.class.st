Class {
	#name : #PWBASTString,
	#superclass : #Object,
	#instVars : [
		'string',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTString >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ string = anObject string
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTString >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTString: self
]

{ #category : #comparing }
PWBASTString >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ string hash bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTString >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTString >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTString >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTString >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTString >> string [
	^ string
]

{ #category : #accessing }
PWBASTString >> string: anObject [
	string := anObject
]

{ #category : #'as yet unclassified' }
PWBASTString >> toString [
	^ string
]
