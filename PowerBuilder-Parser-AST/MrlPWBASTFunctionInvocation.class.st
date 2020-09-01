Class {
	#name : #MrlPWBASTFunctionInvocation,
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
MrlPWBASTFunctionInvocation >> = anObject [
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
MrlPWBASTFunctionInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTFunctionInvocation: self
]

{ #category : #accessing }
MrlPWBASTFunctionInvocation >> defaultVariable [
	^ defaultVariable
]

{ #category : #accessing }
MrlPWBASTFunctionInvocation >> defaultVariable: anObject [
	defaultVariable := anObject
]

{ #category : #accessing }
MrlPWBASTFunctionInvocation >> functionArguments [
	^ functionArguments
]

{ #category : #accessing }
MrlPWBASTFunctionInvocation >> functionArguments: anObject [
	functionArguments := anObject
]

{ #category : #accessing }
MrlPWBASTFunctionInvocation >> functionName [
	^ functionName
]

{ #category : #accessing }
MrlPWBASTFunctionInvocation >> functionName: anObject [
	functionName := anObject
]

{ #category : #comparing }
MrlPWBASTFunctionInvocation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ defaultVariable hash
		bitXor:
			(functionName hash
				bitXor:
					(functionArguments hash
						bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
MrlPWBASTFunctionInvocation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTFunctionInvocation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTFunctionInvocation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTFunctionInvocation >> stopPosition: anObject [
	stopPosition := anObject
]
