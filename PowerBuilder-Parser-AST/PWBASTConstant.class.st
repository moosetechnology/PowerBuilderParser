Class {
	#name : #PWBASTConstant,
	#superclass : #Object,
	#instVars : [
		'constant',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTConstant >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTConstant: self
]

{ #category : #accessing }
PWBASTConstant >> constant [
	^ constant
]

{ #category : #accessing }
PWBASTConstant >> constant: anObject [
	constant := anObject
]

{ #category : #accessing }
PWBASTConstant >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTConstant >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTConstant >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTConstant >> stopPosition: anObject [
	stopPosition := anObject
]
