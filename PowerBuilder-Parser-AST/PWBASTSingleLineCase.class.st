Class {
	#name : #PWBASTSingleLineCase,
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
PWBASTSingleLineCase >> = anObject [
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
PWBASTSingleLineCase >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTSingleLineCase: self
]

{ #category : #accessing }
PWBASTSingleLineCase >> expressionList [
	^ expressionList
]

{ #category : #accessing }
PWBASTSingleLineCase >> expressionList: anObject [
	expressionList := anObject
]

{ #category : #comparing }
PWBASTSingleLineCase >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expressionList hash
		bitXor: (statement hash bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTSingleLineCase >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTSingleLineCase >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTSingleLineCase >> statement [
	^ statement
]

{ #category : #accessing }
PWBASTSingleLineCase >> statement: anObject [
	statement := anObject
]

{ #category : #accessing }
PWBASTSingleLineCase >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTSingleLineCase >> stopPosition: anObject [
	stopPosition := anObject
]
