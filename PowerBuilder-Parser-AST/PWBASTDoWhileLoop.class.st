Class {
	#name : #PWBASTDoWhileLoop,
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
PWBASTDoWhileLoop >> = anObject [
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
PWBASTDoWhileLoop >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDoWhileLoop: self
]

{ #category : #accessing }
PWBASTDoWhileLoop >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTDoWhileLoop >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTDoWhileLoop >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor:
			(statements hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTDoWhileLoop >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDoWhileLoop >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDoWhileLoop >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTDoWhileLoop >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTDoWhileLoop >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDoWhileLoop >> stopPosition: anObject [
	stopPosition := anObject
]
