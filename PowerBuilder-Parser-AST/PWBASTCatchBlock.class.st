Class {
	#name : #PWBASTCatchBlock,
	#superclass : #Object,
	#instVars : [
		'arguments',
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTCatchBlock >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCatchBlock: self
]

{ #category : #accessing }
PWBASTCatchBlock >> arguments [
	^ arguments
]

{ #category : #accessing }
PWBASTCatchBlock >> arguments: anObject [
	arguments := anObject
]

{ #category : #accessing }
PWBASTCatchBlock >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCatchBlock >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCatchBlock >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTCatchBlock >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTCatchBlock >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCatchBlock >> stopPosition: anObject [
	stopPosition := anObject
]
