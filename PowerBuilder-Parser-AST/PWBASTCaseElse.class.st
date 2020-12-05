Class {
	#name : #PWBASTCaseElse,
	#superclass : #Object,
	#instVars : [
		'statements',
		'statement',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTCaseElse >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ statements = anObject statements
		and: [ statement = anObject statement
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTCaseElse >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCaseElse: self
]

{ #category : #comparing }
PWBASTCaseElse >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ statements hash
		bitXor: (statement hash bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTCaseElse >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCaseElse >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCaseElse >> statement [
	^ statement
]

{ #category : #accessing }
PWBASTCaseElse >> statement: anObject [
	statement := anObject
]

{ #category : #accessing }
PWBASTCaseElse >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTCaseElse >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTCaseElse >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCaseElse >> stopPosition: anObject [
	stopPosition := anObject
]
