Class {
	#name : #PWBASTCaseElse,
	#superclass : #Object,
	#instVars : [
		'statements',
		'statements'
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
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
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
		bitXor: (startPosition hash bitXor: stopPosition hash)
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
PWBASTCaseElse >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTCaseElse >> statements1 [
	^ statements
]

{ #category : #accessing }
PWBASTCaseElse >> statements1: anObject [
	statements := anObject
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
