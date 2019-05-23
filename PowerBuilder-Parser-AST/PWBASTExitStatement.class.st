Class {
	#name : #PWBASTExitStatement,
	#superclass : #Object,
	#instVars : [
		'exitStatement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTExitStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTExitStatement: self
]

{ #category : #accessing }
PWBASTExitStatement >> exitStatement [
	^ exitStatement
]

{ #category : #accessing }
PWBASTExitStatement >> exitStatement: anObject [
	exitStatement := anObject
]

{ #category : #accessing }
PWBASTExitStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTExitStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTExitStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTExitStatement >> stopPosition: anObject [
	stopPosition := anObject
]
