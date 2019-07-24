Class {
	#name : #PWBASTArrayPosition,
	#superclass : #Object,
	#instVars : [
		'expressions',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTArrayPosition >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArrayPosition: self
]

{ #category : #accessing }
PWBASTArrayPosition >> expressions [
	^ expressions
]

{ #category : #accessing }
PWBASTArrayPosition >> expressions: anObject [
	expressions := anObject
]

{ #category : #accessing }
PWBASTArrayPosition >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTArrayPosition >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTArrayPosition >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTArrayPosition >> stopPosition: anObject [
	stopPosition := anObject
]
