Class {
	#name : #PWBASTStatement,
	#superclass : #Object,
	#instVars : [
		'statement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTStatement >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ statement = anObject statement
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTStatement: self
]

{ #category : #comparing }
PWBASTStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ statement hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTStatement >> statement [
	^ statement
]

{ #category : #accessing }
PWBASTStatement >> statement: anObject [
	statement := anObject
]

{ #category : #accessing }
PWBASTStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTStatement >> stopPosition: anObject [
	stopPosition := anObject
]
