Class {
	#name : #PWBASTEventPosting,
	#superclass : #Object,
	#instVars : [
		'identifiers',
		'arrayPositions',
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
	^ identifiers = anObject identifiers
		and: [ arrayPositions = anObject arrayPositions
				and: [ functionArguments = anObject functionArguments
						and: [ startPosition = anObject startPosition
								and: [ stopPosition = anObject stopPosition ] ] ] ]
]

{ #category : #visiting }
PWBASTEventPosting >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEventPosting: self
]

{ #category : #accessing }
PWBASTEventPosting >> argument: index [
	^ self functionArguments functionArguments at: index
]

{ #category : #accessing }
PWBASTEventPosting >> arrayPositions [
	^ arrayPositions
]

{ #category : #accessing }
PWBASTEventPosting >> arrayPositions: anObject [
	arrayPositions := anObject
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

	^ identifiers hash
		bitXor:
			(arrayPositions hash
				bitXor:
					(functionArguments hash
						bitXor: (startPosition hash bitXor: stopPosition hash)))
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
PWBASTEventPosting >> identifiers [
	^ identifiers
]

{ #category : #accessing }
PWBASTEventPosting >> identifiers: anObject [
	identifiers := anObject
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
