Class {
	#name : #MrlPWBASTFunctionArgument,
	#superclass : #Object,
	#instVars : [
		'argumentOption',
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTFunctionArgument >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ argumentOption = anObject argumentOption
		and: [ expression = anObject expression
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
MrlPWBASTFunctionArgument >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTFunctionArgument: self
]

{ #category : #accessing }
MrlPWBASTFunctionArgument >> argumentOption [
	^ argumentOption
]

{ #category : #accessing }
MrlPWBASTFunctionArgument >> argumentOption: anObject [
	argumentOption := anObject
]

{ #category : #accessing }
MrlPWBASTFunctionArgument >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTFunctionArgument >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
MrlPWBASTFunctionArgument >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ argumentOption hash
		bitXor:
			(expression hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTFunctionArgument >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTFunctionArgument >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTFunctionArgument >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTFunctionArgument >> stopPosition: anObject [
	stopPosition := anObject
]
