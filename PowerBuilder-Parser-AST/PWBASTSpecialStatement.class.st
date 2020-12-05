Class {
	#name : #PWBASTSpecialStatement,
	#superclass : #Object,
	#instVars : [
		'specialStatement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTSpecialStatement >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ specialStatement = anObject specialStatement
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTSpecialStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSpecialStatement: self
]

{ #category : #comparing }
PWBASTSpecialStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ specialStatement hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTSpecialStatement >> specialStatement [
	^ specialStatement
]

{ #category : #accessing }
PWBASTSpecialStatement >> specialStatement: anObject [
	specialStatement := anObject
]

{ #category : #accessing }
PWBASTSpecialStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSpecialStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSpecialStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSpecialStatement >> stopPosition: anObject [
	stopPosition := anObject
]
