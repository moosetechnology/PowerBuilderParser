Class {
	#name : #PWBASTIfSingleLine,
	#superclass : #Object,
	#instVars : [
		'condition',
		'statement',
		'elseOnLine'
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
PWBASTIfSingleLine >> statement [
	^ statement
]

{ #category : #accessing }
PWBASTIfSingleLine >> statement: anObject [
	statement := anObject
]
