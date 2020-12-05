Class {
	#name : #PWBASTIfSingleLine,
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
PWBASTIfSingleLine >> = anObject [
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
PWBASTIfSingleLine >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTIfSingleLine: self
]

{ #category : #accessing }
PWBASTIfSingleLine >> condition [
	^ condition
]

{ #category : #accessing }
PWBASTIfSingleLine >> condition: anObject [
	condition := anObject
]

{ #category : #accessing }
PWBASTIfSingleLine >> elseOnLine [
	^ elseOnLine
]

{ #category : #accessing }
PWBASTIfSingleLine >> elseOnLine: anObject [
	elseOnLine := anObject
]

{ #category : #comparing }
PWBASTIfSingleLine >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ condition hash
		bitXor:
			(statement hash
				bitXor:
					(elseOnLine hash
						bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
PWBASTIfSingleLine >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTIfSingleLine >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTIfSingleLine >> statement [
	^ statement
]

{ #category : #accessing }
PWBASTIfSingleLine >> statement: anObject [
	statement := anObject
]

{ #category : #accessing }
PWBASTIfSingleLine >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTIfSingleLine >> stopPosition: anObject [
	stopPosition := anObject
]
