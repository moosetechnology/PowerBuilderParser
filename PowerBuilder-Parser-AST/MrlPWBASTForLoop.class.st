Class {
	#name : #MrlPWBASTForLoop,
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
MrlPWBASTForLoop >> = anObject [
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
MrlPWBASTForLoop >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTForLoop: self
]

{ #category : #accessing }
MrlPWBASTForLoop >> assignationStatement [
	^ assignationStatement
]

{ #category : #accessing }
MrlPWBASTForLoop >> assignationStatement: anObject [
	assignationStatement := anObject
]

{ #category : #accessing }
MrlPWBASTForLoop >> endExpression [
	^ endExpression
]

{ #category : #accessing }
MrlPWBASTForLoop >> endExpression: anObject [
	endExpression := anObject
]

{ #category : #comparing }
MrlPWBASTForLoop >> hash [
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
MrlPWBASTForLoop >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTForLoop >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTForLoop >> statements [
	^ statements
]

{ #category : #accessing }
MrlPWBASTForLoop >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
MrlPWBASTForLoop >> stepExpression [
	^ stepExpression
]

{ #category : #accessing }
MrlPWBASTForLoop >> stepExpression: anObject [
	stepExpression := anObject
]

{ #category : #accessing }
MrlPWBASTForLoop >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTForLoop >> stopPosition: anObject [
	stopPosition := anObject
]
