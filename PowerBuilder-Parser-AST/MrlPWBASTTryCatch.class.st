Class {
	#name : #MrlPWBASTTryCatch,
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

{ #category : #comparing }
MrlPWBASTTryCatch >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ statements = anObject statements
		and: [ catchBlocks = anObject catchBlocks
				and: [ finallyBlock = anObject finallyBlock
						and: [ startPosition = anObject startPosition
								and: [ stopPosition = anObject stopPosition ] ] ] ]
]

{ #category : #visiting }
MrlPWBASTTryCatch >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTTryCatch: self
]

{ #category : #accessing }
MrlPWBASTTryCatch >> catchBlocks [
	^ catchBlocks
]

{ #category : #accessing }
MrlPWBASTTryCatch >> catchBlocks: anObject [
	catchBlocks := anObject
]

{ #category : #accessing }
MrlPWBASTTryCatch >> finallyBlock [
	^ finallyBlock
]

{ #category : #accessing }
MrlPWBASTTryCatch >> finallyBlock: anObject [
	finallyBlock := anObject
]

{ #category : #comparing }
MrlPWBASTTryCatch >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ statements hash
		bitXor:
			(catchBlocks hash
				bitXor:
					(finallyBlock hash
						bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
MrlPWBASTTryCatch >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTTryCatch >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTTryCatch >> statements [
	^ statements
]

{ #category : #accessing }
MrlPWBASTTryCatch >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
MrlPWBASTTryCatch >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTTryCatch >> stopPosition: anObject [
	stopPosition := anObject
]
