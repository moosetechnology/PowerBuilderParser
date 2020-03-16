Class {
	#name : #PWBASTConstant,
	#superclass : #Object,
	#instVars : [
		'constant',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTConstant >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ constant = anObject constant
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTConstant >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTConstant: self
]

{ #category : #accessing }
PWBASTConstant >> constant [
	^ constant
]

{ #category : #accessing }
PWBASTConstant >> constant: anObject [
	constant := anObject
]

{ #category : #comparing }
PWBASTConstant >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ constant hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTConstant >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTConstant >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTConstant >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTConstant >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #printing }
PWBASTConstant >> toString [
	^ constant
]
