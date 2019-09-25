Class {
	#name : #PWBASTArgument,
	#superclass : #Object,
	#instVars : [
		'argumentOption',
		'type',
		'identifier',
		'arrayWithSize',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTArgument >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ argumentOption = anObject argumentOption
		and: [ type = anObject type
				and: [ identifier = anObject identifier
						and: [ arrayWithSize = anObject arrayWithSize
								and: [ startPosition = anObject startPosition
										and: [ stopPosition = anObject stopPosition ] ] ] ] ]
]

{ #category : #visiting }
PWBASTArgument >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTArgument: self
]

{ #category : #accessing }
PWBASTArgument >> argumentOption [
	^ argumentOption
]

{ #category : #accessing }
PWBASTArgument >> argumentOption: anObject [
	argumentOption := anObject
]

{ #category : #accessing }
PWBASTArgument >> arrayWithSize [
	^ arrayWithSize
]

{ #category : #accessing }
PWBASTArgument >> arrayWithSize: anObject [
	arrayWithSize := anObject
]

{ #category : #comparing }
PWBASTArgument >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ argumentOption hash
		bitXor:
			(type hash
				bitXor:
					(identifier hash
						bitXor:
							(arrayWithSize hash
								bitXor: (startPosition hash bitXor: stopPosition hash))))
]

{ #category : #accessing }
PWBASTArgument >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTArgument >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTArgument >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTArgument >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTArgument >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTArgument >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTArgument >> type [
	^ type
]

{ #category : #accessing }
PWBASTArgument >> type: anObject [
	type := anObject
]
