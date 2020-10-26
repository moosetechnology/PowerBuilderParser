Class {
	#name : #PWBASTSubroutineSignature,
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
PWBASTSubroutineSignature >> = anObject [
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
PWBASTSubroutineSignature >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSubroutineSignature: self
]

{ #category : #accessing }
PWBASTSubroutineSignature >> accessModifier [
	^ accessModifier
]

{ #category : #accessing }
PWBASTSubroutineSignature >> accessModifier: anObject [
	accessModifier := anObject
]

{ #category : #accessing }
PWBASTSubroutineSignature >> arguments [
	^ arguments
]

{ #category : #accessing }
PWBASTSubroutineSignature >> arguments: anObject [
	arguments := anObject
]

{ #category : #comparing }
PWBASTSubroutineSignature >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ accessModifier hash
		bitXor:
			(identifier hash
				bitXor: (arguments hash bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
PWBASTSubroutineSignature >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTSubroutineSignature >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTSubroutineSignature >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSubroutineSignature >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSubroutineSignature >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSubroutineSignature >> stopPosition: anObject [
	stopPosition := anObject
]
