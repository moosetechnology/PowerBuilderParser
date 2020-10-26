Class {
	#name : #MrlPWBASTTypePrototypes,
	#superclass : #Object,
	#instVars : [
		'declarations',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTTypePrototypes >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ declarations = anObject declarations
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
MrlPWBASTTypePrototypes >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTTypePrototypes: self
]

{ #category : #accessing }
MrlPWBASTTypePrototypes >> declarations [
	^ declarations
]

{ #category : #accessing }
MrlPWBASTTypePrototypes >> declarations: anObject [
	declarations := anObject
]

{ #category : #comparing }
MrlPWBASTTypePrototypes >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ declarations hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTTypePrototypes >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTTypePrototypes >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTTypePrototypes >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTTypePrototypes >> stopPosition: anObject [
	stopPosition := anObject
]
