Class {
	#name : #MrlPWBASTElseIf,
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
MrlPWBASTElseIf >> = anObject [
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
MrlPWBASTElseIf >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTElseIf: self
]

{ #category : #accessing }
MrlPWBASTElseIf >> expression [
	^ expression
]

{ #category : #accessing }
MrlPWBASTElseIf >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
MrlPWBASTElseIf >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor:
			(statements hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTElseIf >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTElseIf >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTElseIf >> statements [
	^ statements
]

{ #category : #accessing }
MrlPWBASTElseIf >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
MrlPWBASTElseIf >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTElseIf >> stopPosition: anObject [
	stopPosition := anObject
]
