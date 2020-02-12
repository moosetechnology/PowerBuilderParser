Class {
	#name : #PWBASTEventPosting,
	#superclass : #Object,
	#instVars : [
		'identifier',
		'functionArguments',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTEventPosting >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ identifier = anObject identifier
		and: [ functionArguments = anObject functionArguments
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTEventPosting >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEventPosting: self
]

{ #category : #accessing }
PWBASTEventPosting >> functionArguments [
	^ functionArguments
]

{ #category : #accessing }
PWBASTEventPosting >> functionArguments: anObject [
	functionArguments := anObject
]

{ #category : #comparing }
PWBASTEventPosting >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifier hash
		bitXor:
			(functionArguments hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTEventPosting >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTEventPosting >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTEventPosting >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTEventPosting >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTEventPosting >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTEventPosting >> stopPosition: anObject [
	stopPosition := anObject
]
