Class {
	#name : #MrlPWBASTAccessOrType,
	#superclass : #Object,
	#instVars : [
		'accessOrType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTAccessOrType >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ accessOrType = anObject accessOrType
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTAccessOrType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTAccessOrType: self
]

{ #category : #accessing }
MrlPWBASTAccessOrType >> accessOrType [
	^ accessOrType
]

{ #category : #accessing }
MrlPWBASTAccessOrType >> accessOrType: anObject [
	accessOrType := anObject
]

{ #category : #comparing }
MrlPWBASTAccessOrType >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ accessOrType hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTAccessOrType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTAccessOrType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTAccessOrType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTAccessOrType >> stopPosition: anObject [
	stopPosition := anObject
]
