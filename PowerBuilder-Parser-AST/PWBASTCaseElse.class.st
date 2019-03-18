Class {
	#name : #PWBASTCaseElse,
	#superclass : #Object,
	#instVars : [
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTCaseElse >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCaseElse: self
]

{ #category : #accessing }
PWBASTCaseElse >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCaseElse >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCaseElse >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTCaseElse >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTCaseElse >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCaseElse >> stopPosition: anObject [
	stopPosition := anObject
]
