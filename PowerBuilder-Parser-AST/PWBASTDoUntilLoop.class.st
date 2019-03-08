Class {
	#name : #PWBASTDoUntilLoop,
	#superclass : #Object,
	#instVars : [
		'expression',
		'statements'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTDoUntilLoop >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDoUntilLoop: self
]

{ #category : #accessing }
PWBASTDoUntilLoop >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTDoUntilLoop >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
PWBASTDoUntilLoop >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTDoUntilLoop >> statements: anObject [
	statements := anObject
]
