Class {
	#name : #PWBASTEventAttribute,
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
PWBASTEventAttribute >> = anObject [
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
PWBASTEventAttribute >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEventAttribute: self
]

{ #category : #accessing }
PWBASTEventAttribute >> attribute [
	^ attribute
]

{ #category : #accessing }
PWBASTEventAttribute >> attribute: anObject [
	attribute := anObject
]

{ #category : #accessing }
PWBASTEventAttribute >> eventName [
	^ eventName
]

{ #category : #accessing }
PWBASTEventAttribute >> eventName: anObject [
	eventName := anObject
]

{ #category : #comparing }
PWBASTEventAttribute >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ returnType hash
		bitXor:
			(eventName hash
				bitXor: (attribute hash bitXor: (startPosition hash bitXor: stopPosition hash)))
]

{ #category : #accessing }
PWBASTEventAttribute >> returnType [
	^ returnType
]

{ #category : #accessing }
PWBASTEventAttribute >> returnType: anObject [
	returnType := anObject
]

{ #category : #accessing }
PWBASTEventAttribute >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTEventAttribute >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTEventAttribute >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTEventAttribute >> stopPosition: anObject [
	stopPosition := anObject
]
