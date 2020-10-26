Class {
	#name : #PWBASTCallStatement,
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
PWBASTCallStatement >> = anObject [
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
PWBASTCallStatement >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTCallStatement: self
]

{ #category : #accessing }
PWBASTCallStatement >> eventType [
	^ eventType
]

{ #category : #accessing }
PWBASTCallStatement >> eventType: anObject [
	eventType := anObject
]

{ #category : #comparing }
PWBASTCallStatement >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ variable hash
		bitXor:
			(identifier hash
				bitXor: (eventType hash bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
PWBASTCallStatement >> identifier [
	^ identifier
]

{ #category : #accessing }
PWBASTCallStatement >> identifier: anObject [
	identifier := anObject
]

{ #category : #accessing }
PWBASTCallStatement >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTCallStatement >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTCallStatement >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTCallStatement >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTCallStatement >> variable [
	^ variable
]

{ #category : #accessing }
PWBASTCallStatement >> variable: anObject [
	variable := anObject
]
