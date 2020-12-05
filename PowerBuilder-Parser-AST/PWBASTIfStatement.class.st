Class {
	#name : #PWBASTIfStatement,
	#superclass : #Object,
	#instVars : [
		'ifStatement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTIfStatement >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ ifStatement = anObject ifStatement
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTIfStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTIfStatement: self
]

{ #category : #comparing }
PWBASTIfStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ ifStatement hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTIfStatement >> ifStatement [
	^ ifStatement
]

{ #category : #accessing }
PWBASTIfStatement >> ifStatement: anObject [
	ifStatement := anObject
]

{ #category : #accessing }
PWBASTIfStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTIfStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTIfStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTIfStatement >> stopPosition: anObject [
	stopPosition := anObject
]
