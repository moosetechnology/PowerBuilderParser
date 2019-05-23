Class {
	#name : #PWBASTContinueStatement,
	#superclass : #Object,
	#instVars : [
		'continueStatement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTContinueStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTContinueStatement: self
]

{ #category : #accessing }
PWBASTContinueStatement >> continueStatement [
	^ continueStatement
]

{ #category : #accessing }
PWBASTContinueStatement >> continueStatement: anObject [
	continueStatement := anObject
]

{ #category : #accessing }
PWBASTContinueStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTContinueStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTContinueStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTContinueStatement >> stopPosition: anObject [
	stopPosition := anObject
]
