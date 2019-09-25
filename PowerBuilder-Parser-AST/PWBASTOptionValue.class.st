Class {
	#name : #PWBASTOptionValue,
	#superclass : #Object,
	#instVars : [
		'expression',
		'graphicIndex',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTOptionValue >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expression = anObject expression
		and: [ graphicIndex = anObject graphicIndex
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTOptionValue >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTOptionValue: self
]

{ #category : #accessing }
PWBASTOptionValue >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTOptionValue >> expression: anObject [
	expression := anObject
]

{ #category : #accessing }
PWBASTOptionValue >> graphicIndex [
	^ graphicIndex
]

{ #category : #accessing }
PWBASTOptionValue >> graphicIndex: anObject [
	graphicIndex := anObject
]

{ #category : #comparing }
PWBASTOptionValue >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor:
			(graphicIndex hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTOptionValue >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTOptionValue >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTOptionValue >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTOptionValue >> stopPosition: anObject [
	stopPosition := anObject
]
