Class {
	#name : #PWBASTTryCatch,
	#superclass : #Object,
	#instVars : [
		'statements',
		'catchBlocks',
		'finallyBlock',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTTryCatch >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTTryCatch: self
]

{ #category : #accessing }
PWBASTTryCatch >> catchBlocks [
	^ catchBlocks
]

{ #category : #accessing }
PWBASTTryCatch >> catchBlocks: anObject [
	catchBlocks := anObject
]

{ #category : #accessing }
PWBASTTryCatch >> finallyBlock [
	^ finallyBlock
]

{ #category : #accessing }
PWBASTTryCatch >> finallyBlock: anObject [
	finallyBlock := anObject
]

{ #category : #accessing }
PWBASTTryCatch >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTTryCatch >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTTryCatch >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTTryCatch >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTTryCatch >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTTryCatch >> stopPosition: anObject [
	stopPosition := anObject
]
