Class {
	#name : #MrlPWBASTDynamicMethodInvocation,
	#superclass : #Object,
	#instVars : [
		'uncheckedIdentifier',
		'functionArguments',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTDynamicMethodInvocation >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ uncheckedIdentifier = anObject uncheckedIdentifier
		and: [ functionArguments = anObject functionArguments
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
MrlPWBASTDynamicMethodInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTDynamicMethodInvocation: self
]

{ #category : #accessing }
MrlPWBASTDynamicMethodInvocation >> functionArguments [
	^ functionArguments
]

{ #category : #accessing }
MrlPWBASTDynamicMethodInvocation >> functionArguments: anObject [
	functionArguments := anObject
]

{ #category : #comparing }
MrlPWBASTDynamicMethodInvocation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ uncheckedIdentifier hash
		bitXor:
			(functionArguments hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTDynamicMethodInvocation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTDynamicMethodInvocation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTDynamicMethodInvocation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTDynamicMethodInvocation >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTDynamicMethodInvocation >> uncheckedIdentifier [
	^ uncheckedIdentifier
]

{ #category : #accessing }
MrlPWBASTDynamicMethodInvocation >> uncheckedIdentifier: anObject [
	uncheckedIdentifier := anObject
]
