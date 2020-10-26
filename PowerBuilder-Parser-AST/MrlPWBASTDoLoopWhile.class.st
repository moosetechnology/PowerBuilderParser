Class {
	#name : #MrlPWBASTDoLoopWhile,
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
MrlPWBASTDoLoopWhile >> = anObject [
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
MrlPWBASTDoLoopWhile >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTDoLoopWhile: self
]

{ #category : #accessing }
MrlPWBASTDoLoopWhile >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTDoLoopWhile >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
MrlPWBASTDoLoopWhile >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ statements hash
		bitXor:
			(expression hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTDoLoopWhile >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTDoLoopWhile >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTDoLoopWhile >> statements [
	^ statements
]

{ #category : #accessing }
MrlPWBASTDoLoopWhile >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
MrlPWBASTDoLoopWhile >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTDoLoopWhile >> stopPosition: anObject [
	stopPosition := anObject
]
