Class {
	#name : #PWBASTFinallyBlock,
	#superclass : #Object,
	#instVars : [
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTFinallyBlock >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTFinallyBlock: self
]

{ #category : #accessing }
PWBASTFinallyBlock >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTFinallyBlock >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTFinallyBlock >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTFinallyBlock >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTFinallyBlock >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTFinallyBlock >> stopPosition: anObject [
	stopPosition := anObject
]
