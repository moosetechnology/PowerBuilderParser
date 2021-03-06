Class {
	#name : #PWBASTFunctionDeclaration,
	#superclass : #Object,
	#instVars : [
		'functionSignature',
		'behaviouralOptions',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTFunctionDeclaration >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ functionSignature = anObject functionSignature
		and: [ behaviouralOptions = anObject behaviouralOptions
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTFunctionDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFunctionDeclaration: self
]

{ #category : #accessing }
PWBASTFunctionDeclaration >> behaviouralOptions [
	^ behaviouralOptions
]

{ #category : #accessing }
PWBASTFunctionDeclaration >> behaviouralOptions: anObject [
	behaviouralOptions := anObject
]

{ #category : #accessing }
PWBASTFunctionDeclaration >> functionSignature [
	^ functionSignature
]

{ #category : #accessing }
PWBASTFunctionDeclaration >> functionSignature: anObject [
	functionSignature := anObject
]

{ #category : #comparing }
PWBASTFunctionDeclaration >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ functionSignature hash
		bitXor:
			(behaviouralOptions hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTFunctionDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTFunctionDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTFunctionDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTFunctionDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]
