Class {
	#name : #PWBASTDynamicMethodInvocation,
	#superclass : #Object,
	#instVars : [
		'uncheckedIdentifier',
		'functionArguments',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTDynamicMethodInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDynamicMethodInvocation: self
]

{ #category : #accessing }
PWBASTDynamicMethodInvocation >> functionArguments [
	^ functionArguments
]

{ #category : #accessing }
PWBASTDynamicMethodInvocation >> functionArguments: anObject [
	functionArguments := anObject
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
