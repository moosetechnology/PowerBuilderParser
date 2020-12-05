Class {
	#name : #PWBASTGotoStatement,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTGotoStatement >> = anObject [
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
PWBASTGotoStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTGotoStatement: self
]

{ #category : #comparing }
PWBASTGotoStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTGotoStatement >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTGotoStatement >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTGotoStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTGotoStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTGotoStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTGotoStatement >> stopPosition: anObject [
	stopPosition := anObject
]
