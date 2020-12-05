Class {
	#name : #PWBASTFunctionArgument,
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
PWBASTFunctionArgument >> = anObject [
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
PWBASTFunctionArgument >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFunctionArgument: self
]

{ #category : #accessing }
PWBASTFunctionArgument >> argumentOption [
	^ argumentOption
]

{ #category : #accessing }
PWBASTFunctionArgument >> argumentOption: anObject [
	argumentOption := anObject
]

{ #category : #accessing }
PWBASTFunctionArgument >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTFunctionArgument >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTFunctionArgument >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ argumentOption hash
		bitXor:
			(expression hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTFunctionArgument >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTFunctionArgument >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTFunctionArgument >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTFunctionArgument >> stopPosition: anObject [
	stopPosition := anObject
]
