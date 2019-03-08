Class {
	#name : #PWBASTCatchBlock,
	#superclass : #Object,
	#instVars : [
		'arguments',
		'statements'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTCatchBlock >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCatchBlock: self
]

{ #category : #accessing }
PWBASTCatchBlock >> arguments [
	^ arguments
]

{ #category : #accessing }
PWBASTCatchBlock >> arguments: anObject [
	arguments := anObject
]

{ #category : #accessing }
PWBASTCatchBlock >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTCatchBlock >> statements: anObject [
	statements := anObject
]
