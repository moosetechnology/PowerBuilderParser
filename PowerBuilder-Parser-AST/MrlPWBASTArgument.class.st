Class {
	#name : #MrlPWBASTArgument,
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
MrlPWBASTArgument >> = anObject [
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

{ #category : #accessing }
MrlPWBASTArgument >> argumentOption [
	^ argumentOption
]

{ #category : #accessing }
MrlPWBASTArgument >> argumentOption: anObject [
	argumentOption := anObject
]

{ #category : #accessing }
MrlPWBASTArgument >> arrayWithSize [
	^ arrayWithSize
]

{ #category : #accessing }
MrlPWBASTArgument >> arrayWithSize: anObject [
	arrayWithSize := anObject
]

{ #category : #comparing }
MrlPWBASTArgument >> hash [
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
MrlPWBASTArgument >> identifier [
	^ identifier
]

{ #category : #accessing }
MrlPWBASTArgument >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
MrlPWBASTArgument >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTArgument >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTArgument >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTArgument >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTArgument >> type [
	^ type
]

{ #category : #accessing }
MrlPWBASTArgument >> type: anObject [
	type := anObject
]
