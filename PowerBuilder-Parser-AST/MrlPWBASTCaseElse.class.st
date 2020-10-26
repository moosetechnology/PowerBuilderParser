Class {
	#name : #MrlPWBASTCaseElse,
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
MrlPWBASTCaseElse >> = anObject [
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
MrlPWBASTCaseElse >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTCaseElse: self
]

{ #category : #comparing }
MrlPWBASTCaseElse >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ statements hash
		bitXor: (statement hash bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTCaseElse >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTCaseElse >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTCaseElse >> statement [
	^ statement
]

{ #category : #accessing }
MrlPWBASTCaseElse >> statement: anObject [
	statement := anObject
]

{ #category : #accessing }
MrlPWBASTCaseElse >> statements [
	^ statements
]

{ #category : #accessing }
MrlPWBASTCaseElse >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
MrlPWBASTCaseElse >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTCaseElse >> stopPosition: anObject [
	stopPosition := anObject
]
