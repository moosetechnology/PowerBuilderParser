Class {
	#name : #PWBASTElse,
	#superclass : #Object,
	#instVars : [
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTElse >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ statements = anObject statements
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTElse >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTElse: self
]

{ #category : #comparing }
PWBASTElse >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ statements hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTElse >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTElse >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTElse >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTElse >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTElse >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTElse >> stopPosition: anObject [
	stopPosition := anObject
]
