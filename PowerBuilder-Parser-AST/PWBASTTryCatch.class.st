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

{ #category : #comparing }
PWBASTTryCatch >> = anObject [
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

{ #category : #comparing }
PWBASTTryCatch >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ statements hash
		bitXor:
			(catchBlocks hash
				bitXor:
					(finallyBlock hash
						bitXor: (startPosition hash bitXor: stopPosition hash)))
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
