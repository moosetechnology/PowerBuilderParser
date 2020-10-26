Class {
	#name : #MrlPWBASTVariable,
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
MrlPWBASTVariable >> = anObject [
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
MrlPWBASTVariable >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTVariable: self
]

{ #category : #accessing }
MrlPWBASTVariable >> arrayDefinition [
	^ arrayDefinition
]

{ #category : #accessing }
MrlPWBASTVariable >> arrayDefinition: anObject [
	arrayDefinition := anObject
]

{ #category : #comparing }
MrlPWBASTVariable >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor:
			(arrayDefinition hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTVariable >> identifier [
	^ identifier
]

{ #category : #accessing }
MrlPWBASTVariable >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
MrlPWBASTVariable >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTVariable >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTVariable >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTVariable >> stopPosition: anObject [
	stopPosition := anObject
]
