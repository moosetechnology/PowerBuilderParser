Class {
	#name : #MrlPWBASTEventAttribute,
	#superclass : #Object,
	#instVars : [
		'returnType',
		'eventName',
		'attribute',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
MrlPWBASTEventAttribute >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ returnType = anObject returnType
		and: [ eventName = anObject eventName
				and: [ attribute = anObject attribute
						and: [ startPosition = anObject startPosition
								and: [ stopPosition = anObject stopPosition ] ] ] ]
]

{ #category : #visiting }
MrlPWBASTEventAttribute >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTEventAttribute: self
]

{ #category : #accessing }
MrlPWBASTEventAttribute >> attribute [
	^ attribute
]

{ #category : #accessing }
MrlPWBASTEventAttribute >> attribute: anObject [
	attribute := anObject
]

{ #category : #accessing }
MrlPWBASTEventAttribute >> eventName [
	^ eventName
]

{ #category : #accessing }
MrlPWBASTEventAttribute >> eventName: anObject [
	eventName := anObject
]

{ #category : #comparing }
MrlPWBASTEventAttribute >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ returnType hash
		bitXor:
			(eventName hash
				bitXor: (attribute hash bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
MrlPWBASTEventAttribute >> returnType [
	^ returnType
]

{ #category : #accessing }
MrlPWBASTEventAttribute >> returnType: anObject [
	returnType := anObject
]

{ #category : #accessing }
MrlPWBASTEventAttribute >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTEventAttribute >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTEventAttribute >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTEventAttribute >> stopPosition: anObject [
	stopPosition := anObject
]
