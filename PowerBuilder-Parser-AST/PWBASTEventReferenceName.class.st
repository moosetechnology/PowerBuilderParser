Class {
	#name : #PWBASTEventReferenceName,
	#superclass : #Object,
	#instVars : [
		'objectClass',
		'eventName',
		'arguments',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTEventReferenceName >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ objectClass = anObject objectClass
		and: [ eventName = anObject eventName
				and: [ arguments = anObject arguments
						and: [ startPosition = anObject startPosition
								and: [ stopPosition = anObject stopPosition ] ] ] ]
]

{ #category : #visiting }
PWBASTEventReferenceName >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEventReferenceName: self
]

{ #category : #accessing }
PWBASTEventReferenceName >> arguments [
	^ arguments
]

{ #category : #accessing }
PWBASTEventReferenceName >> arguments: anObject [
	arguments := anObject
]

{ #category : #accessing }
PWBASTEventReferenceName >> eventName [
	^ eventName
]

{ #category : #accessing }
PWBASTEventReferenceName >> eventName: anObject [
	eventName := anObject
]

{ #category : #comparing }
PWBASTEventReferenceName >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ objectClass hash
		bitXor:
			(eventName hash
				bitXor: (arguments hash bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
PWBASTEventReferenceName >> objectClass [
	^ objectClass
]

{ #category : #accessing }
PWBASTEventReferenceName >> objectClass: anObject [
	objectClass := anObject
]

{ #category : #accessing }
PWBASTEventReferenceName >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTEventReferenceName >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTEventReferenceName >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTEventReferenceName >> stopPosition: anObject [
	stopPosition := anObject
]
