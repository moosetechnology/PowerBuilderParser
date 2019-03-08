Class {
	#name : #PWBASTTryCatch,
	#superclass : #Object,
	#instVars : [
		'statements',
		'catchBlocks'
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
PWBASTTryCatch >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTTryCatch >> statements: anObject [
	statements := anObject
]
