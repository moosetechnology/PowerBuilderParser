Class {
	#name : #PWBASTContinueStatement,
	#superclass : #Object,
	#instVars : [
		'continueStatement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTContinueStatement >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ continueStatement = anObject continueStatement
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTContinueStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTContinueStatement: self
]

{ #category : #accessing }
PWBASTContinueStatement >> continueStatement [
	^ continueStatement
]

{ #category : #accessing }
PWBASTContinueStatement >> continueStatement: anObject [
	continueStatement := anObject
]

{ #category : #comparing }
PWBASTContinueStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ continueStatement hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTContinueStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTContinueStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTContinueStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTContinueStatement >> stopPosition: anObject [
	stopPosition := anObject
]
