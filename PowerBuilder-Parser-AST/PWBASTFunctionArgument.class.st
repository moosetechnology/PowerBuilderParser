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
