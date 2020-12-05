Class {
	#name : #PWBASTDoLoopWhile,
	#superclass : #Object,
	#instVars : [
		'statements',
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTDoLoopWhile >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ statements = anObject statements
		and: [ expression = anObject expression
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTDoLoopWhile >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDoLoopWhile: self
]

{ #category : #accessing }
PWBASTDoLoopWhile >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTDoLoopWhile >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTDoLoopWhile >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ statements hash
		bitXor:
			(expression hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTDoLoopWhile >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDoLoopWhile >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDoLoopWhile >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTDoLoopWhile >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTDoLoopWhile >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDoLoopWhile >> stopPosition: anObject [
	stopPosition := anObject
]
