Class {
	#name : #PWBASTSubroutineSignature,
	#superclass : #Object,
	#instVars : [
		'accessModifier',
		'identifier',
		'arguments',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTSubroutineSignature >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSubroutineSignature: self
]

{ #category : #accessing }
PWBASTSubroutineSignature >> accessModifier [
	^ accessModifier
]

{ #category : #accessing }
PWBASTSubroutineSignature >> accessModifier: anObject [
	accessModifier := anObject
]

{ #category : #accessing }
PWBASTSubroutineSignature >> arguments [
	^ arguments
]

{ #category : #accessing }
PWBASTSubroutineSignature >> arguments: anObject [
	arguments := anObject
]

{ #category : #accessing }
PWBASTSubroutineSignature >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTSubroutineSignature >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTSubroutineSignature >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSubroutineSignature >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSubroutineSignature >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSubroutineSignature >> stopPosition: anObject [
	stopPosition := anObject
]
