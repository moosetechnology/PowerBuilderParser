Class {
	#name : #PWBASTRegularMethodInvocation,
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
PWBASTRegularMethodInvocation >> = anObject [
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
PWBASTRegularMethodInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTRegularMethodInvocation: self
]

{ #category : #accessing }
PWBASTRegularMethodInvocation >> dot [
	^ dot
]

{ #category : #accessing }
PWBASTRegularMethodInvocation >> dot: anObject [
	dot := anObject
]

{ #category : #accessing }
PWBASTRegularMethodInvocation >> functionArguments [
	^ functionArguments
]

{ #category : #accessing }
PWBASTRegularMethodInvocation >> functionArguments: anObject [
	functionArguments := anObject
]

{ #category : #comparing }
PWBASTRegularMethodInvocation >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ dot hash
		bitXor:
			(uncheckedIdentifier hash
				bitXor:
					(functionArguments hash
						bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
PWBASTRegularMethodInvocation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTRegularMethodInvocation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTRegularMethodInvocation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTRegularMethodInvocation >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTRegularMethodInvocation >> uncheckedIdentifier [
	^ uncheckedIdentifier
]

{ #category : #accessing }
PWBASTRegularMethodInvocation >> uncheckedIdentifier: anObject [
	uncheckedIdentifier := anObject
]
