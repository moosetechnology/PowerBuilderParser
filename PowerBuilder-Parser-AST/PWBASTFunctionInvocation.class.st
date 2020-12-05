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

{ #category : #comparing }
PWBASTFunctionInvocation >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ defaultVariable = anObject defaultVariable
		and: [ functionName = anObject functionName
				and: [ functionArguments = anObject functionArguments
						and: [ startPosition = anObject startPosition
								and: [ stopPosition = anObject stopPosition ] ] ] ]
]

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

{ #category : #comparing }
PWBASTFunctionInvocation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ defaultVariable hash
		bitXor:
			(functionName hash
				bitXor:
					(functionArguments hash
						bitXor: (startPosition hash bitXor: stopPosition hash)))
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
