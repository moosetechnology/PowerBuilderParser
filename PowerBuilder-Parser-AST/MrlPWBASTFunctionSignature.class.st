Class {
	#name : #MrlPWBASTFunctionSignature,
	#superclass : #Object,
	#instVars : [
		'accessModifier',
		'type',
		'identifier',
		'arguments',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTFunctionSignature >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ accessModifier = anObject accessModifier
		and: [ type = anObject type
				and: [ identifier = anObject identifier
						and: [ arguments = anObject arguments
								and: [ startPosition = anObject startPosition
										and: [ stopPosition = anObject stopPosition ] ] ] ] ]
]

{ #category : #visiting }
MrlPWBASTFunctionSignature >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTFunctionSignature: self
]

{ #category : #accessing }
MrlPWBASTFunctionSignature >> accessModifier [
	^ accessModifier
]

{ #category : #accessing }
MrlPWBASTFunctionSignature >> accessModifier: anObject [
	accessModifier := anObject
]

{ #category : #accessing }
MrlPWBASTFunctionSignature >> arguments [
	^ arguments
]

{ #category : #accessing }
MrlPWBASTFunctionSignature >> arguments: anObject [
	arguments := anObject
]

{ #category : #comparing }
MrlPWBASTFunctionSignature >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ accessModifier hash
		bitXor:
			(type hash
				bitXor:
					(identifier hash
						bitXor: (arguments hash bitXor: (startPosition hash bitXor: stopPosition hash))))
]

{ #category : #accessing }
MrlPWBASTFunctionSignature >> identifier [
	^ identifier
]

{ #category : #accessing }
MrlPWBASTFunctionSignature >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
MrlPWBASTFunctionSignature >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTFunctionSignature >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTFunctionSignature >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTFunctionSignature >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTFunctionSignature >> type [
	^ type
]

{ #category : #accessing }
MrlPWBASTFunctionSignature >> type: anObject [
	type := anObject
]
