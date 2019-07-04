Class {
	#name : #PWBASTFunctionInvocation,
	#superclass : #Object,
	#instVars : [
		'defaultVariable',
		'functionName',
		'functionArguments',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTFunctionInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFunctionInvocation: self
]

{ #category : #accessing }
PWBASTFunctionInvocation >> defaultVariable [
	^ defaultVariable
]

{ #category : #accessing }
PWBASTFunctionInvocation >> defaultVariable: anObject [
	defaultVariable := anObject
]

{ #category : #accessing }
PWBASTFunctionInvocation >> functionArguments [
	^ functionArguments
]

{ #category : #accessing }
PWBASTFunctionInvocation >> functionArguments: anObject [
	functionArguments := anObject
]

{ #category : #accessing }
PWBASTFunctionInvocation >> functionName [
	^ functionName
]

{ #category : #accessing }
PWBASTFunctionInvocation >> functionName: anObject [
	functionName := anObject
]

{ #category : #accessing }
PWBASTFunctionInvocation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTFunctionInvocation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTFunctionInvocation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTFunctionInvocation >> stopPosition: anObject [
	stopPosition := anObject
]
