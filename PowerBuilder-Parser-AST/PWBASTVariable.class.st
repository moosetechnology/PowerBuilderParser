Class {
	#name : #PWBASTVariable,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'arrayDefinition',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTVariable >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ identifier = anObject identifier
		and: [ arrayDefinition = anObject arrayDefinition
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTVariable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTVariable: self
]

{ #category : #accessing }
PWBASTVariable >> arrayDefinition [
	^ arrayDefinition
]

{ #category : #accessing }
PWBASTVariable >> arrayDefinition: anObject [
	arrayDefinition := anObject
]

{ #category : #comparing }
PWBASTVariable >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor:
			(arrayDefinition hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTVariable >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTVariable >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTVariable >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTVariable >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTVariable >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTVariable >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTVariable >> this [
	^ this
]

{ #category : #accessing }
PWBASTVariable >> this: anObject [
	this := anObject
]
