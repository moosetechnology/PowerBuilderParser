Class {
	#name : #PWBASTFunctionArguments,
	#superclass : #Object,
	#instVars : [
		'functionArguments',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTFunctionArguments >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFunctionArguments: self
]

{ #category : #accessing }
PWBASTFunctionArguments >> functionArguments [
	^ functionArguments
]

{ #category : #accessing }
PWBASTFunctionArguments >> functionArguments: anObject [
	functionArguments := anObject
]

{ #category : #accessing }
PWBASTFunctionArguments >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTFunctionArguments >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTFunctionArguments >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTFunctionArguments >> stopPosition: anObject [
	stopPosition := anObject
]
