Class {
	#name : #PWBASTFunctionSignature,
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
PWBASTFunctionSignature >> = anObject [
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
PWBASTFunctionSignature >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFunctionSignature: self
]

{ #category : #accessing }
PWBASTFunctionSignature >> accessModifier [
	^ accessModifier
]

{ #category : #accessing }
PWBASTFunctionSignature >> accessModifier: anObject [
	accessModifier := anObject
]

{ #category : #accessing }
PWBASTFunctionSignature >> arguments [
	^ arguments
]

{ #category : #accessing }
PWBASTFunctionSignature >> arguments: anObject [
	arguments := anObject
]

{ #category : #comparing }
PWBASTFunctionSignature >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ accessModifier hash
		bitXor:
			(type hash
				bitXor:
					(identifier hash
						bitXor: (arguments hash bitXor: (startPosition hash bitXor: stopPosition hash))))
]

{ #category : #accessing }
PWBASTFunctionSignature >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTFunctionSignature >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTFunctionSignature >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTFunctionSignature >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTFunctionSignature >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTFunctionSignature >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTFunctionSignature >> type [
	^ type
]

{ #category : #accessing }
PWBASTFunctionSignature >> type: anObject [
	type := anObject
]
