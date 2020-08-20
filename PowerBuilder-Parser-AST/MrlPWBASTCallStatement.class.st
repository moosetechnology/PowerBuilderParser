Class {
	#name : #MrlPWBASTCallStatement,
	#superclass : #Object,
	#instVars : [
		'variable',
		'identifier',
		'eventType',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTCallStatement >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ variable = anObject variable
		and: [ identifier = anObject identifier
				and: [ eventType = anObject eventType
						and: [ startPosition = anObject startPosition
								and: [ stopPosition = anObject stopPosition ] ] ] ]
]

{ #category : #visiting }
MrlPWBASTCallStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTCallStatement: self
]

{ #category : #accessing }
MrlPWBASTCallStatement >> eventType [
	^ eventType
]

{ #category : #accessing }
MrlPWBASTCallStatement >> eventType: anObject [
	eventType := anObject
]

{ #category : #comparing }
MrlPWBASTCallStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ variable hash
		bitXor:
			(identifier hash
				bitXor: (eventType hash bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
MrlPWBASTCallStatement >> identifier [
	^ identifier
]

{ #category : #accessing }
MrlPWBASTCallStatement >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
MrlPWBASTCallStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTCallStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTCallStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTCallStatement >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTCallStatement >> variable [
	^ variable
]

{ #category : #accessing }
MrlPWBASTCallStatement >> variable: anObject [
	variable := anObject
]
