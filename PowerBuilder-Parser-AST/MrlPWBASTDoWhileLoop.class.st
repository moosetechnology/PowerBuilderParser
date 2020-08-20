Class {
	#name : #MrlPWBASTDoWhileLoop,
	#superclass : #Object,
	#instVars : [
		'expression',
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTDoWhileLoop >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expression = anObject expression
		and: [ statements = anObject statements
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
MrlPWBASTDoWhileLoop >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTDoWhileLoop: self
]

{ #category : #accessing }
MrlPWBASTDoWhileLoop >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTDoWhileLoop >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
MrlPWBASTDoWhileLoop >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor:
			(statements hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTDoWhileLoop >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTDoWhileLoop >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTDoWhileLoop >> statements [
	^ statements
]

{ #category : #accessing }
MrlPWBASTDoWhileLoop >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
MrlPWBASTDoWhileLoop >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTDoWhileLoop >> stopPosition: anObject [
	stopPosition := anObject
]
