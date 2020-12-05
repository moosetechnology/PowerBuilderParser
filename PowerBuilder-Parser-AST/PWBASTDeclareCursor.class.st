Class {
	#name : #PWBASTDeclareCursor,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'target',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTDeclareCursor >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ identifier = anObject identifier
		and: [ target = anObject target
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTDeclareCursor >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDeclareCursor: self
]

{ #category : #comparing }
PWBASTDeclareCursor >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (target hash bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTDeclareCursor >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTDeclareCursor >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTDeclareCursor >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDeclareCursor >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDeclareCursor >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDeclareCursor >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTDeclareCursor >> target [
	^ target
]

{ #category : #accessing }
PWBASTDeclareCursor >> target: anObject [
	target := anObject
]
