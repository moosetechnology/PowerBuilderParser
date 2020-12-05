Class {
	#name : #PWBASTForLoop,
	#superclass : #Object,
	#instVars : [
		'assignationStatement',
		'endExpression',
		'stepExpression',
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTForLoop >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ assignationStatement = anObject assignationStatement
		and: [ endExpression = anObject endExpression
				and: [ stepExpression = anObject stepExpression
						and: [ statements = anObject statements
								and: [ startPosition = anObject startPosition
										and: [ stopPosition = anObject stopPosition ] ] ] ] ]
]

{ #category : #visiting }
PWBASTForLoop >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTForLoop: self
]

{ #category : #accessing }
PWBASTForLoop >> assignationStatement [
	^ assignationStatement
]

{ #category : #accessing }
PWBASTForLoop >> assignationStatement: anObject [
	assignationStatement := anObject
]

{ #category : #accessing }
PWBASTForLoop >> endExpression [
	^ endExpression
]

{ #category : #accessing }
PWBASTForLoop >> endExpression: anObject [
	endExpression := anObject
]

{ #category : #comparing }
PWBASTForLoop >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ assignationStatement hash
		bitXor:
			(endExpression hash
				bitXor:
					(stepExpression hash
						bitXor:
							(statements hash
								bitXor: (startPosition hash bitXor: stopPosition hash))))
]

{ #category : #accessing }
PWBASTForLoop >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTForLoop >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTForLoop >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTForLoop >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTForLoop >> stepExpression [
	^ stepExpression
]

{ #category : #accessing }
PWBASTForLoop >> stepExpression: anObject [
	stepExpression := anObject
]

{ #category : #accessing }
PWBASTForLoop >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTForLoop >> stopPosition: anObject [
	stopPosition := anObject
]
