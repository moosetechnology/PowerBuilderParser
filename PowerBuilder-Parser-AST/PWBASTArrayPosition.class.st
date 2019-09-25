Class {
	#name : #PWBASTArrayPosition,
	#superclass : #Object,
	#instVars : [
		'expressions',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTArrayPosition >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expressions = anObject expressions
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #visiting }
PWBASTArrayPosition >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArrayPosition: self
]

{ #category : #accessing }
PWBASTArrayPosition >> expressions [
	^ expressions
]

{ #category : #accessing }
PWBASTArrayPosition >> expressions: anObject [
	expressions := anObject
]

{ #category : #comparing }
PWBASTArrayPosition >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expressions hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
PWBASTArrayPosition >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTArrayPosition >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTArrayPosition >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTArrayPosition >> stopPosition: anObject [
	stopPosition := anObject
]
