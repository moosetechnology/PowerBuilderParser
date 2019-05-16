Class {
	#name : #PWBASTMethodInvocation,
	#superclass : #Object,
	#instVars : [
		'methodInvocation',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTMethodInvocation >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTMethodInvocation: self
]

{ #category : #accessing }
PWBASTMethodInvocation >> methodInvocation [
	^ methodInvocation
]

{ #category : #accessing }
PWBASTMethodInvocation >> methodInvocation: anObject [
	methodInvocation := anObject
]

{ #category : #accessing }
PWBASTMethodInvocation >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTMethodInvocation >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTMethodInvocation >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTMethodInvocation >> stopPosition: anObject [
	stopPosition := anObject
]
