Class {
	#name : #PWBASTAccessOrType,
	#superclass : #Object,
	#instVars : [
		'accessOrType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTAccessOrType >> = anObject [
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
PWBASTAccessOrType >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAccessOrType: self
]

{ #category : #accessing }
PWBASTAccessOrType >> accessOrType [
	^ accessOrType
]

{ #category : #accessing }
PWBASTAccessOrType >> accessOrType: anObject [
	accessOrType := anObject
]

{ #category : #comparing }
PWBASTAccessOrType >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ accessOrType hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTAccessOrType >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTAccessOrType >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTAccessOrType >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTAccessOrType >> stopPosition: anObject [
	stopPosition := anObject
]
