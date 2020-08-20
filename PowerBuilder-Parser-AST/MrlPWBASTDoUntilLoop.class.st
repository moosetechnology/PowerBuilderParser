Class {
	#name : #MrlPWBASTDoUntilLoop,
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
MrlPWBASTDoUntilLoop >> = anObject [
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
MrlPWBASTDoUntilLoop >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTDoUntilLoop: self
]

{ #category : #accessing }
MrlPWBASTDoUntilLoop >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTDoUntilLoop >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
MrlPWBASTDoUntilLoop >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor:
			(statements hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTDoUntilLoop >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTDoUntilLoop >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTDoUntilLoop >> statements [
	^ statements
]

{ #category : #accessing }
MrlPWBASTDoUntilLoop >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
MrlPWBASTDoUntilLoop >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTDoUntilLoop >> stopPosition: anObject [
	stopPosition := anObject
]
