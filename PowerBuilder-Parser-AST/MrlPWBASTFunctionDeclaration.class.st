Class {
	#name : #MrlPWBASTFunctionDeclaration,
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
MrlPWBASTFunctionDeclaration >> = anObject [
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
MrlPWBASTFunctionDeclaration >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTFunctionDeclaration: self
]

{ #category : #accessing }
MrlPWBASTFunctionDeclaration >> behaviouralOptions [
	^ behaviouralOptions
]

{ #category : #accessing }
MrlPWBASTFunctionDeclaration >> behaviouralOptions: anObject [
	behaviouralOptions := anObject
]

{ #category : #accessing }
MrlPWBASTFunctionDeclaration >> functionSignature [
	^ functionSignature
]

{ #category : #accessing }
MrlPWBASTFunctionDeclaration >> functionSignature: anObject [
	functionSignature := anObject
]

{ #category : #comparing }
MrlPWBASTFunctionDeclaration >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ functionSignature hash
		bitXor:
			(behaviouralOptions hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTFunctionDeclaration >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTFunctionDeclaration >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTFunctionDeclaration >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTFunctionDeclaration >> stopPosition: anObject [
	stopPosition := anObject
]
