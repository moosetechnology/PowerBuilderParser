Class {
	#name : #PWBASTTypePrototypes,
	#superclass : #Object,
	#instVars : [
		'declarations',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTTypePrototypes >> = anObject [
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
PWBASTTypePrototypes >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTTypePrototypes: self
]

{ #category : #accessing }
PWBASTTypePrototypes >> declarations [
	^ declarations
]

{ #category : #accessing }
PWBASTTypePrototypes >> declarations: anObject [
	declarations := anObject
]

{ #category : #comparing }
PWBASTTypePrototypes >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ declarations hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTTypePrototypes >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTTypePrototypes >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTTypePrototypes >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTTypePrototypes >> stopPosition: anObject [
	stopPosition := anObject
]
