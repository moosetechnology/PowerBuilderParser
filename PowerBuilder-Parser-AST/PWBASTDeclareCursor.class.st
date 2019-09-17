Class {
	#name : #PWBASTDeclareCursor,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'target',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTDeclareCursor >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDeclareCursor: self
]

{ #category : #accessing }
PWBASTDeclareCursor >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTDeclareCursor >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTDeclareCursor >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDeclareCursor >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDeclareCursor >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDeclareCursor >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTDeclareCursor >> target [
	^ target
]

{ #category : #accessing }
PWBASTDeclareCursor >> target: anObject [
	target := anObject
]
