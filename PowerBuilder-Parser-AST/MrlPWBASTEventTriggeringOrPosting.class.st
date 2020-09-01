Class {
	#name : #MrlPWBASTEventTriggeringOrPosting,
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
MrlPWBASTEventTriggeringOrPosting >> = anObject [
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
MrlPWBASTEventTriggeringOrPosting >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTEventTriggeringOrPosting: self
]

{ #category : #accessing }
MrlPWBASTEventTriggeringOrPosting >> arrayPositions [
	^ arrayPositions
]

{ #category : #accessing }
MrlPWBASTEventTriggeringOrPosting >> arrayPositions: anObject [
	arrayPositions := anObject
]

{ #category : #accessing }
MrlPWBASTEventTriggeringOrPosting >> eventLong [
	^ eventLong
]

{ #category : #accessing }
MrlPWBASTEventTriggeringOrPosting >> eventLong: anObject [
	eventLong := anObject
]

{ #category : #accessing }
MrlPWBASTEventTriggeringOrPosting >> eventName [
	^ eventName
]

{ #category : #accessing }
MrlPWBASTEventTriggeringOrPosting >> eventName: anObject [
	eventName := anObject
]

{ #category : #accessing }
MrlPWBASTEventTriggeringOrPosting >> eventWord [
	^ eventWord
]

{ #category : #accessing }
MrlPWBASTEventTriggeringOrPosting >> eventWord: anObject [
	eventWord := anObject
]

{ #category : #comparing }
MrlPWBASTEventTriggeringOrPosting >> hash [
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
MrlPWBASTEventTriggeringOrPosting >> identifiers [
	^ identifiers
]

{ #category : #accessing }
MrlPWBASTEventTriggeringOrPosting >> identifiers: anObject [
	identifiers := anObject
]

{ #category : #accessing }
MrlPWBASTEventTriggeringOrPosting >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTEventTriggeringOrPosting >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTEventTriggeringOrPosting >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTEventTriggeringOrPosting >> stopPosition: anObject [
	stopPosition := anObject
]
