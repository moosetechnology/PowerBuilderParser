Class {
	#name : #MrlPWBASTIfMultiLine,
	#superclass : #Object,
	#instVars : [
		'condition',
		'statements',
		'elseIfs',
		'else',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTIfMultiLine >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ condition = anObject condition
		and: [ statements = anObject statements
				and: [ elseIfs = anObject elseIfs
						and: [ else = anObject else
								and: [ startPosition = anObject startPosition
										and: [ stopPosition = anObject stopPosition ] ] ] ] ]
]

{ #category : #visiting }
MrlPWBASTIfMultiLine >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTIfMultiLine: self
]

{ #category : #accessing }
MrlPWBASTIfMultiLine >> condition [
	^ condition
]

{ #category : #accessing }
MrlPWBASTIfMultiLine >> condition: anObject [
	condition := anObject
]

{ #category : #accessing }
MrlPWBASTIfMultiLine >> else [
	^ else
]

{ #category : #accessing }
MrlPWBASTIfMultiLine >> else: anObject [
	else := anObject
]

{ #category : #accessing }
MrlPWBASTIfMultiLine >> elseIfs [
	^ elseIfs
]

{ #category : #accessing }
MrlPWBASTIfMultiLine >> elseIfs: anObject [
	elseIfs := anObject
]

{ #category : #comparing }
MrlPWBASTIfMultiLine >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ condition hash
		bitXor:
			(statements hash
				bitXor:
					(elseIfs hash
						bitXor: (else hash bitXor: (startPosition hash bitXor: stopPosition hash))))
]

{ #category : #accessing }
MrlPWBASTIfMultiLine >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTIfMultiLine >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTIfMultiLine >> statements [
	^ statements
]

{ #category : #accessing }
MrlPWBASTIfMultiLine >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
MrlPWBASTIfMultiLine >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTIfMultiLine >> stopPosition: anObject [
	stopPosition := anObject
]
