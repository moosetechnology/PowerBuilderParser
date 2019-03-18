Class {
	#name : #PWBASTIfMultiLine,
	#superclass : #Object,
	#instVars : [
		'condition',
		'statements',
		'elseIfs',
		'else',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTIfMultiLine >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTIfMultiLine: self
]

{ #category : #accessing }
PWBASTIfMultiLine >> condition [
	^ condition
]

{ #category : #accessing }
PWBASTIfMultiLine >> condition: anObject [
	condition := anObject
]

{ #category : #accessing }
PWBASTIfMultiLine >> else [
	^ else
]

{ #category : #accessing }
PWBASTIfMultiLine >> else: anObject [
	else := anObject
]

{ #category : #accessing }
PWBASTIfMultiLine >> elseIfs [
	^ elseIfs
]

{ #category : #accessing }
PWBASTIfMultiLine >> elseIfs: anObject [
	elseIfs := anObject
]

{ #category : #accessing }
PWBASTIfMultiLine >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTIfMultiLine >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTIfMultiLine >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTIfMultiLine >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTIfMultiLine >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTIfMultiLine >> stopPosition: anObject [
	stopPosition := anObject
]
