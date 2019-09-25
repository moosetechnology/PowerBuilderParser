Class {
	#name : #PWBASTElseOnLine,
	#superclass : #Object,
	#instVars : [
		'statement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTElseOnLine >> = anObject [
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
PWBASTElseOnLine >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTElseOnLine: self
]

{ #category : #comparing }
PWBASTElseOnLine >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ statement hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTElseOnLine >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTElseOnLine >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTElseOnLine >> statement [
	^ statement
]

{ #category : #accessing }
PWBASTElseOnLine >> statement: anObject [
	statement := anObject
]

{ #category : #accessing }
PWBASTElseOnLine >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTElseOnLine >> stopPosition: anObject [
	stopPosition := anObject
]
