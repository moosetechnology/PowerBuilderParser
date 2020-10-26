Class {
	#name : #PWBASTEventTriggeringOrPosting,
	#superclass : #Object,
	#instVars : [
		'identifiers',
		'arrayPositions',
		'eventName',
		'eventWord',
		'eventLong',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTEventTriggeringOrPosting >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ identifiers = anObject identifiers
		and: [ arrayPositions = anObject arrayPositions
				and: [ eventName = anObject eventName
						and: [ eventWord = anObject eventWord
								and: [ eventLong = anObject eventLong
										and: [ startPosition = anObject startPosition
												and: [ stopPosition = anObject stopPosition ] ] ] ] ] ]
]

{ #category : #visiting }
PWBASTEventTriggeringOrPosting >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTEventTriggeringOrPosting: self
]

{ #category : #accessing }
PWBASTEventTriggeringOrPosting >> arrayPositions [
	^ arrayPositions
]

{ #category : #accessing }
PWBASTEventTriggeringOrPosting >> arrayPositions: anObject [
	arrayPositions := anObject
]

{ #category : #accessing }
PWBASTEventTriggeringOrPosting >> eventLong [
	^ eventLong
]

{ #category : #accessing }
PWBASTEventTriggeringOrPosting >> eventLong: anObject [
	eventLong := anObject
]

{ #category : #accessing }
PWBASTEventTriggeringOrPosting >> eventName [
	^ eventName
]

{ #category : #accessing }
PWBASTEventTriggeringOrPosting >> eventName: anObject [
	eventName := anObject
]

{ #category : #accessing }
PWBASTEventTriggeringOrPosting >> eventWord [
	^ eventWord
]

{ #category : #accessing }
PWBASTEventTriggeringOrPosting >> eventWord: anObject [
	eventWord := anObject
]

{ #category : #comparing }
PWBASTEventTriggeringOrPosting >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifiers hash
		bitXor:
			(arrayPositions hash
				bitXor:
					(eventName hash
						bitXor:
							(eventWord hash
								bitXor: (eventLong hash bitXor: (startPosition hash bitXor: stopPosition hash)))))
]

{ #category : #accessing }
PWBASTEventTriggeringOrPosting >> identifiers [
	^ identifiers
]

{ #category : #accessing }
PWBASTEventTriggeringOrPosting >> identifiers: anObject [
	identifiers := anObject
]

{ #category : #accessing }
PWBASTEventTriggeringOrPosting >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTEventTriggeringOrPosting >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTEventTriggeringOrPosting >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTEventTriggeringOrPosting >> stopPosition: anObject [
	stopPosition := anObject
]
