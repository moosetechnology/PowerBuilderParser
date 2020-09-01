Class {
	#name : #MrlPWBASTRegularMethodInvocation,
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
MrlPWBASTRegularMethodInvocation >> = anObject [
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
MrlPWBASTRegularMethodInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTRegularMethodInvocation: self
]

{ #category : #accessing }
MrlPWBASTRegularMethodInvocation >> functionArguments [
	^ functionArguments
]

{ #category : #accessing }
MrlPWBASTRegularMethodInvocation >> functionArguments: anObject [
	functionArguments := anObject
]

{ #category : #comparing }
MrlPWBASTRegularMethodInvocation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ uncheckedIdentifier hash
		bitXor:
			(functionArguments hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTRegularMethodInvocation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTRegularMethodInvocation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTRegularMethodInvocation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTRegularMethodInvocation >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTRegularMethodInvocation >> uncheckedIdentifier [
	^ uncheckedIdentifier
]

{ #category : #accessing }
MrlPWBASTRegularMethodInvocation >> uncheckedIdentifier: anObject [
	uncheckedIdentifier := anObject
]
