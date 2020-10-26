Class {
	#name : #MrlPWBASTMultiLineCase,
	#superclass : #Object,
	#instVars : [
		'expressionList',
		'statements',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTMultiLineCase >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expressionList = anObject expressionList
		and: [ statements = anObject statements
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
MrlPWBASTMultiLineCase >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTMultiLineCase: self
]

{ #category : #accessing }
MrlPWBASTMultiLineCase >> expressionList [
	^ expressionList
]

{ #category : #accessing }
MrlPWBASTMultiLineCase >> expressionList: anObject [
	expressionList := anObject
]

{ #category : #comparing }
MrlPWBASTMultiLineCase >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expressionList hash
		bitXor:
			(statements hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTMultiLineCase >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTMultiLineCase >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTMultiLineCase >> statements [
	^ statements
]

{ #category : #accessing }
MrlPWBASTMultiLineCase >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
MrlPWBASTMultiLineCase >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTMultiLineCase >> stopPosition: anObject [
	stopPosition := anObject
]
