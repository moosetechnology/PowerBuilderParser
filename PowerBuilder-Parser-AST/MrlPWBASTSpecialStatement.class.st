Class {
	#name : #MrlPWBASTSpecialStatement,
	#superclass : #Object,
	#instVars : [
		'specialStatement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTSpecialStatement >> = anObject [
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
MrlPWBASTSpecialStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTSpecialStatement: self
]

{ #category : #comparing }
MrlPWBASTSpecialStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ specialStatement hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTSpecialStatement >> specialStatement [
	^ specialStatement
]

{ #category : #accessing }
MrlPWBASTSpecialStatement >> specialStatement: anObject [
	specialStatement := anObject
]

{ #category : #accessing }
MrlPWBASTSpecialStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTSpecialStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTSpecialStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTSpecialStatement >> stopPosition: anObject [
	stopPosition := anObject
]
