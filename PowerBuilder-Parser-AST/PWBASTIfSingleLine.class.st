Class {
	#name : #PWBASTIfSingleLine,
	#superclass : #Object,
	#instVars : [
		'condition',
		'statement',
		'elseOnLine',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTIfSingleLine >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTIfSingleLine: self
]

{ #category : #accessing }
PWBASTIfSingleLine >> condition [
	^ condition
]

{ #category : #accessing }
PWBASTIfSingleLine >> condition: anObject [
	condition := anObject
]

{ #category : #accessing }
PWBASTIfSingleLine >> elseOnLine [
	^ elseOnLine
]

{ #category : #accessing }
PWBASTIfSingleLine >> elseOnLine: anObject [
	elseOnLine := anObject
]

{ #category : #accessing }
PWBASTIfSingleLine >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTIfSingleLine >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTIfSingleLine >> statement [
	^ statement
]

{ #category : #accessing }
PWBASTIfSingleLine >> statement: anObject [
	statement := anObject
]

{ #category : #accessing }
PWBASTIfSingleLine >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTIfSingleLine >> stopPosition: anObject [
	stopPosition := anObject
]
