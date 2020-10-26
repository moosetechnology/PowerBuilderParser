Class {
	#name : #PWBASTMultiLineCase,
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
PWBASTMultiLineCase >> = anObject [
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
PWBASTMultiLineCase >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTMultiLineCase: self
]

{ #category : #accessing }
PWBASTMultiLineCase >> expressionList [
	^ expressionList
]

{ #category : #accessing }
PWBASTMultiLineCase >> expressionList: anObject [
	expressionList := anObject
]

{ #category : #comparing }
PWBASTMultiLineCase >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expressionList hash
		bitXor:
			(statements hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTMultiLineCase >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTMultiLineCase >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTMultiLineCase >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTMultiLineCase >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTMultiLineCase >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTMultiLineCase >> stopPosition: anObject [
	stopPosition := anObject
]
