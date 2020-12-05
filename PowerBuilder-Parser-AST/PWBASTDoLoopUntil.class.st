Class {
	#name : #PWBASTDoLoopUntil,
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
PWBASTDoLoopUntil >> = anObject [
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
PWBASTDoLoopUntil >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDoLoopUntil: self
]

{ #category : #accessing }
PWBASTDoLoopUntil >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTDoLoopUntil >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTDoLoopUntil >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ statements hash
		bitXor:
			(expression hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTDoLoopUntil >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDoLoopUntil >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDoLoopUntil >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTDoLoopUntil >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTDoLoopUntil >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDoLoopUntil >> stopPosition: anObject [
	stopPosition := anObject
]
