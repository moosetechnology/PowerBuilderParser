Class {
	#name : #PWBASTFunctionDefinition,
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
PWBASTFunctionDefinition >> = anObject [
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
PWBASTFunctionDefinition >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFunctionDefinition: self
]

{ #category : #accessing }
PWBASTFunctionDefinition >> functionSignature [
	^ functionSignature
]

{ #category : #accessing }
PWBASTFunctionDefinition >> functionSignature: anObject [
	functionSignature := anObject
]

{ #category : #comparing }
PWBASTFunctionDefinition >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ functionSignature hash
		bitXor:
			(statements hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTFunctionDefinition >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTFunctionDefinition >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTFunctionDefinition >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTFunctionDefinition >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTFunctionDefinition >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTFunctionDefinition >> stopPosition: anObject [
	stopPosition := anObject
]
