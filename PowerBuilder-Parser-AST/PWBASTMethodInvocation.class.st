Class {
	#name : #PWBASTMethodInvocation,
	#superclass : #Object,
	#instVars : [
		'uncheckedIdentifier',
		'functionArguments'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTMethodInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTMethodInvocation: self
]

{ #category : #accessing }
PWBASTMethodInvocation >> functionArguments [
	^ functionArguments
]

{ #category : #accessing }
PWBASTMethodInvocation >> functionArguments: anObject [
	functionArguments := anObject
]

{ #category : #accessing }
PWBASTMethodInvocation >> uncheckedIdentifier [
	^ uncheckedIdentifier
]

{ #category : #accessing }
PWBASTMethodInvocation >> uncheckedIdentifier: anObject [
	uncheckedIdentifier := anObject
]
