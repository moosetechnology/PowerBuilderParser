Class {
	#name : #MrlPWBASTArrayPosition,
	#superclass : #Object,
	#instVars : [
		'expressions',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTArrayPosition >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ expressions = anObject expressions
		and: [ startPosition = anObject startPosition
				and: [ stopPosition = anObject stopPosition ] ]
]

{ #category : #accessing }
MrlPWBASTArrayPosition >> expressions [
	^ expressions
]

{ #category : #accessing }
MrlPWBASTArrayPosition >> expressions: anObject [
	expressions := anObject
]

{ #category : #comparing }
MrlPWBASTArrayPosition >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ expressions hash
		bitXor: (startPosition hash bitXor: stopPosition hash)
]

{ #category : #accessing }
MrlPWBASTArrayPosition >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTArrayPosition >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTArrayPosition >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTArrayPosition >> stopPosition: anObject [
	stopPosition := anObject
]
