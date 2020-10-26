Class {
	#name : #MrlPWBASTSubroutineSignature,
	#superclass : #Object,
	#instVars : [
		'accessModifier',
		'identifier',
		'arguments',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTSubroutineSignature >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ accessModifier = anObject accessModifier
		and: [ identifier = anObject identifier
				and: [ arguments = anObject arguments
						and: [ startPosition = anObject startPosition
								and: [ stopPosition = anObject stopPosition ] ] ] ]
]

{ #category : #visiting }
MrlPWBASTSubroutineSignature >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTSubroutineSignature: self
]

{ #category : #accessing }
MrlPWBASTSubroutineSignature >> accessModifier [
	^ accessModifier
]

{ #category : #accessing }
MrlPWBASTSubroutineSignature >> accessModifier: anObject [
	accessModifier := anObject
]

{ #category : #accessing }
MrlPWBASTSubroutineSignature >> arguments [
	^ arguments
]

{ #category : #accessing }
MrlPWBASTSubroutineSignature >> arguments: anObject [
	arguments := anObject
]

{ #category : #comparing }
MrlPWBASTSubroutineSignature >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ accessModifier hash
		bitXor:
			(identifier hash
				bitXor: (arguments hash bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
MrlPWBASTSubroutineSignature >> identifier [
	^ identifier
]

{ #category : #accessing }
MrlPWBASTSubroutineSignature >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
MrlPWBASTSubroutineSignature >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTSubroutineSignature >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTSubroutineSignature >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTSubroutineSignature >> stopPosition: anObject [
	stopPosition := anObject
]
