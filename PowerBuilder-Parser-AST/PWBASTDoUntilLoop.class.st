Class {
	#name : #PWBASTDoUntilLoop,
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
PWBASTDoUntilLoop >> = anObject [
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
PWBASTDoUntilLoop >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDoUntilLoop: self
]

{ #category : #accessing }
PWBASTDoUntilLoop >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTDoUntilLoop >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTDoUntilLoop >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor:
			(statements hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTDoUntilLoop >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDoUntilLoop >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDoUntilLoop >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTDoUntilLoop >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTDoUntilLoop >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDoUntilLoop >> stopPosition: anObject [
	stopPosition := anObject
]
