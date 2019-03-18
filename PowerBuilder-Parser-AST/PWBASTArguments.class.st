Class {
	#name : #PWBASTArguments,
	#superclass : #Object,
	#instVars : [
		'arguments',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTArguments >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArguments: self
]

{ #category : #accessing }
PWBASTArguments >> arguments [
	^ arguments
]

{ #category : #accessing }
PWBASTArguments >> arguments: anObject [
	arguments := anObject
]

{ #category : #accessing }
PWBASTArguments >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTArguments >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTArguments >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTArguments >> stopPosition: anObject [
	stopPosition := anObject
]
