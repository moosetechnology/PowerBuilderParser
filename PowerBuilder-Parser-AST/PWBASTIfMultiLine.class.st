Class {
	#name : #PWBASTIfMultiLine,
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
PWBASTIfMultiLine >> = anObject [
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
PWBASTIfMultiLine >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTIfMultiLine: self
]

{ #category : #accessing }
PWBASTIfMultiLine >> condition [
	^ condition
]

{ #category : #accessing }
PWBASTIfMultiLine >> condition: anObject [
	condition := anObject
]

{ #category : #accessing }
PWBASTIfMultiLine >> else [
	^ else
]

{ #category : #accessing }
PWBASTIfMultiLine >> else: anObject [
	else := anObject
]

{ #category : #accessing }
PWBASTIfMultiLine >> elseIfs [
	^ elseIfs
]

{ #category : #accessing }
PWBASTIfMultiLine >> elseIfs: anObject [
	elseIfs := anObject
]

{ #category : #comparing }
PWBASTIfMultiLine >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ condition hash
		bitXor:
			(statements hash
				bitXor:
					(elseIfs hash
						bitXor: (else hash bitXor: (startPosition hash bitXor: stopPosition hash))))
]

{ #category : #accessing }
PWBASTIfMultiLine >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTIfMultiLine >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTIfMultiLine >> statements [
	^ statements
]

{ #category : #accessing }
PWBASTIfMultiLine >> statements: anObject [
	statements := anObject
]

{ #category : #accessing }
PWBASTIfMultiLine >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTIfMultiLine >> stopPosition: anObject [
	stopPosition := anObject
]
