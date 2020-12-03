Class {
	#name : #MrlPWBASTCatchBlock,
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
MrlPWBASTCatchBlock >> = anObject [
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

{ #category : #accessing }
MrlPWBASTCatchBlock >> arguments [
	^ arguments
]

{ #category : #accessing }
MrlPWBASTCatchBlock >> arguments: anObject [
	arguments := anObject
]

{ #category : #comparing }
MrlPWBASTCatchBlock >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ arguments hash
		bitXor:
			(statements hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTCatchBlock >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTCatchBlock >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTCatchBlock >> statements [
	^ statements
]

{ #category : #accessing }
MrlPWBASTCatchBlock >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
MrlPWBASTCatchBlock >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTCatchBlock >> stopPosition: anObject [
	stopPosition := anObject
]
