Class {
	#name : #MrlPWBASTEventReferenceName,
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
MrlPWBASTEventReferenceName >> = anObject [
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
MrlPWBASTEventReferenceName >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTEventReferenceName: self
]

{ #category : #accessing }
MrlPWBASTEventReferenceName >> arguments [
	^ arguments
]

{ #category : #accessing }
MrlPWBASTEventReferenceName >> arguments: anObject [
	arguments := anObject
]

{ #category : #accessing }
MrlPWBASTEventReferenceName >> eventName [
	^ eventName
]

{ #category : #accessing }
MrlPWBASTEventReferenceName >> eventName: anObject [
	eventName := anObject
]

{ #category : #comparing }
MrlPWBASTEventReferenceName >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ objectClass hash
		bitXor:
			(eventName hash
				bitXor: (arguments hash bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
MrlPWBASTEventReferenceName >> objectClass [
	^ objectClass
]

{ #category : #accessing }
MrlPWBASTEventReferenceName >> objectClass: anObject [
	objectClass := anObject
]

{ #category : #accessing }
MrlPWBASTEventReferenceName >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTEventReferenceName >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTEventReferenceName >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTEventReferenceName >> stopPosition: anObject [
	stopPosition := anObject
]
