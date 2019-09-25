Class {
	#name : #PWBASTCatchBlock,
	#superclass : #Object,
	#instVars : [
		'arguments',
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTCatchBlock >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ arguments = anObject arguments
		and: [ statements = anObject statements
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

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

{ #category : #comparing }
PWBASTCatchBlock >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ arguments hash
		bitXor:
			(statements hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTCatchBlock >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCatchBlock >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCatchBlock >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTCatchBlock >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTCatchBlock >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCatchBlock >> stopPosition: anObject [
	stopPosition := anObject
]
