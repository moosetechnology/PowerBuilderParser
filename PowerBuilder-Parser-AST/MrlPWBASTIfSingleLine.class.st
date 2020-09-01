Class {
	#name : #MrlPWBASTIfSingleLine,
	#superclass : #Object,
	#instVars : [
		'condition',
		'statement',
		'elseOnLine',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTIfSingleLine >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ condition = anObject condition
		and: [ statement = anObject statement
				and: [ elseOnLine = anObject elseOnLine
						and: [ startPosition = anObject startPosition
								and: [ stopPosition = anObject stopPosition ] ] ] ]
]

{ #category : #visiting }
MrlPWBASTIfSingleLine >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTIfSingleLine: self
]

{ #category : #accessing }
MrlPWBASTIfSingleLine >> condition [
	^ condition
]

{ #category : #accessing }
MrlPWBASTIfSingleLine >> condition: anObject [
	condition := anObject
]

{ #category : #accessing }
MrlPWBASTIfSingleLine >> elseOnLine [
	^ elseOnLine
]

{ #category : #accessing }
MrlPWBASTIfSingleLine >> elseOnLine: anObject [
	elseOnLine := anObject
]

{ #category : #comparing }
MrlPWBASTIfSingleLine >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ condition hash
		bitXor:
			(statement hash
				bitXor:
					(elseOnLine hash
						bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
MrlPWBASTIfSingleLine >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTIfSingleLine >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTIfSingleLine >> statement [
	^ statement
]

{ #category : #accessing }
MrlPWBASTIfSingleLine >> statement: anObject [
	statement := anObject
]

{ #category : #accessing }
MrlPWBASTIfSingleLine >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTIfSingleLine >> stopPosition: anObject [
	stopPosition := anObject
]
