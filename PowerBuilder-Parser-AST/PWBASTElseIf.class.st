Class {
	#name : #PWBASTElseIf,
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
PWBASTElseIf >> = anObject [
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
PWBASTElseIf >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTElseIf: self
]

{ #category : #accessing }
PWBASTElseIf >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTElseIf >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTElseIf >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor:
			(statements hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTElseIf >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTElseIf >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTElseIf >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTElseIf >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTElseIf >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTElseIf >> stopPosition: anObject [
	stopPosition := anObject
]
