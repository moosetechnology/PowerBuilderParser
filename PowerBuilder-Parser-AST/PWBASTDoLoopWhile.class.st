Class {
	#name : #PWBASTDoLoopWhile,
	#superclass : #Object,
	#instVars : [
		'statements',
		'expression'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTDoLoopWhile >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDoLoopWhile: self
]

{ #category : #accessing }
PWBASTDoLoopWhile >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTDoLoopWhile >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
PWBASTDoLoopWhile >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTDoLoopWhile >> statements: anObject [
	statements := anObject
]
