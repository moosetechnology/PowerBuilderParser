Class {
	#name : #PWBASTRegularMethodInvocation,
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
PWBASTRegularMethodInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTRegularMethodInvocation: self
]

{ #category : #accessing }
PWBASTRegularMethodInvocation >> functionArguments [
	^ functionArguments
]

{ #category : #accessing }
PWBASTRegularMethodInvocation >> functionArguments: anObject [
	functionArguments := anObject
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
