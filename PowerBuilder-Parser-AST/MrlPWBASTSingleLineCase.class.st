Class {
	#name : #MrlPWBASTSingleLineCase,
	#superclass : #Object,
	#instVars : [
		'expressionList',
		'statement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTSingleLineCase >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expressionList = anObject expressionList
		and: [ statement = anObject statement
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
MrlPWBASTSingleLineCase >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTSingleLineCase: self
]

{ #category : #accessing }
MrlPWBASTSingleLineCase >> expressionList [
	^ expressionList
]

{ #category : #accessing }
MrlPWBASTSingleLineCase >> expressionList: anObject [
	expressionList := anObject
]

{ #category : #comparing }
MrlPWBASTSingleLineCase >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expressionList hash
		bitXor: (statement hash bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTSingleLineCase >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTSingleLineCase >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTSingleLineCase >> statement [
	^ statement
]

{ #category : #accessing }
MrlPWBASTSingleLineCase >> statement: anObject [
	statement := anObject
]

{ #category : #accessing }
MrlPWBASTSingleLineCase >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTSingleLineCase >> stopPosition: anObject [
	stopPosition := anObject
]
