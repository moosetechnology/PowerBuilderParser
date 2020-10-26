Class {
	#name : #MrlPWBASTFunctionDefinition,
	#superclass : #Object,
	#instVars : [
		'functionSignature',
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTFunctionDefinition >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ functionSignature = anObject functionSignature
		and: [ statements = anObject statements
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
MrlPWBASTFunctionDefinition >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTFunctionDefinition: self
]

{ #category : #accessing }
MrlPWBASTFunctionDefinition >> functionSignature [
	^ functionSignature
]

{ #category : #accessing }
MrlPWBASTFunctionDefinition >> functionSignature: anObject [
	functionSignature := anObject
]

{ #category : #comparing }
MrlPWBASTFunctionDefinition >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ functionSignature hash
		bitXor:
			(statements hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTFunctionDefinition >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTFunctionDefinition >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTFunctionDefinition >> statements [
	^ statements
]

{ #category : #accessing }
MrlPWBASTFunctionDefinition >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
MrlPWBASTFunctionDefinition >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTFunctionDefinition >> stopPosition: anObject [
	stopPosition := anObject
]
