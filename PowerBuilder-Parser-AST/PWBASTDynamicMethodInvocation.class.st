Class {
	#name : #PWBASTDynamicMethodInvocation,
	#superclass : #Object,
	#instVars : [
		'dot',
		'uncheckedIdentifier',
		'functionArguments',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTDynamicMethodInvocation >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ dot = anObject dot
		and: [ uncheckedIdentifier = anObject uncheckedIdentifier
				and: [ functionArguments = anObject functionArguments
						and: [ startPosition = anObject startPosition
								and: [ stopPosition = anObject stopPosition ] ] ] ]
]

{ #category : #visiting }
PWBASTDynamicMethodInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDynamicMethodInvocation: self
]

{ #category : #accessing }
PWBASTDynamicMethodInvocation >> dot [
	^ dot
]

{ #category : #accessing }
PWBASTDynamicMethodInvocation >> dot: anObject [
	dot := anObject
]

{ #category : #accessing }
PWBASTDynamicMethodInvocation >> functionArguments [
	^ functionArguments
]

{ #category : #accessing }
PWBASTDynamicMethodInvocation >> functionArguments: anObject [
	functionArguments := anObject
]

{ #category : #comparing }
PWBASTDynamicMethodInvocation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ dot hash
		bitXor:
			(uncheckedIdentifier hash
				bitXor:
					(functionArguments hash
						bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
PWBASTDynamicMethodInvocation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDynamicMethodInvocation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDynamicMethodInvocation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDynamicMethodInvocation >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTDynamicMethodInvocation >> uncheckedIdentifier [
	^ uncheckedIdentifier
]

{ #category : #accessing }
PWBASTDynamicMethodInvocation >> uncheckedIdentifier: anObject [
	uncheckedIdentifier := anObject
]
