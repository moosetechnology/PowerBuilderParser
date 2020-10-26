Class {
	#name : #MrlPWBASTDoLoopUntil,
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
MrlPWBASTDoLoopUntil >> = anObject [
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
MrlPWBASTDoLoopUntil >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTDoLoopUntil: self
]

{ #category : #accessing }
MrlPWBASTDoLoopUntil >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTDoLoopUntil >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
MrlPWBASTDoLoopUntil >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ statements hash
		bitXor:
			(expression hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTDoLoopUntil >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTDoLoopUntil >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTDoLoopUntil >> statements [
	^ statements
]

{ #category : #accessing }
MrlPWBASTDoLoopUntil >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
MrlPWBASTDoLoopUntil >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTDoLoopUntil >> stopPosition: anObject [
	stopPosition := anObject
]
