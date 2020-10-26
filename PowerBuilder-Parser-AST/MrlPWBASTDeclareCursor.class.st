Class {
	#name : #MrlPWBASTDeclareCursor,
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
MrlPWBASTDeclareCursor >> = anObject [
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
MrlPWBASTDeclareCursor >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTDeclareCursor: self
]

{ #category : #comparing }
MrlPWBASTDeclareCursor >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (target hash bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTDeclareCursor >> identifier [
	^ identifier
]

{ #category : #accessing }
MrlPWBASTDeclareCursor >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
MrlPWBASTDeclareCursor >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTDeclareCursor >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTDeclareCursor >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTDeclareCursor >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTDeclareCursor >> target [
	^ target
]

{ #category : #accessing }
MrlPWBASTDeclareCursor >> target: anObject [
	target := anObject
]
