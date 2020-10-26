Class {
	#name : #PWBASTDestroyStatement,
	#superclass : #Object,
	#instVars : [
		'expression',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTDestroyStatement >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expression = anObject expression
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTDestroyStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTDestroyStatement: self
]

{ #category : #accessing }
PWBASTDestroyStatement >> accessOrType [
	^ accessOrType
]

{ #category : #accessing }
PWBASTDestroyStatement >> accessOrType: anObject [
	accessOrType := anObject
]

{ #category : #accessing }
PWBASTDestroyStatement >> expression [
	^ expression
]

{ #category : #accessing }
PWBASTDestroyStatement >> expression: anObject [
	expression := anObject
]

{ #category : #comparing }
PWBASTDestroyStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expression hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTDestroyStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTDestroyStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTDestroyStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTDestroyStatement >> stopPosition: anObject [
	stopPosition := anObject
]
