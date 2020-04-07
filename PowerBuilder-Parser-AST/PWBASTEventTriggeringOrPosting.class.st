Class {
	#name : #PWBASTEventTriggeringOrPosting,
	#superclass : #Object,
	#instVars : [
		'identifiers',
		'arrayPositions',
		'eventInvocationType',
		'functionArguments',
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
				and: [ eventInvocationType = anObject eventInvocationType
						and: [ functionArguments = anObject functionArguments
								and: [ startPosition = anObject startPosition
										and: [ stopPosition = anObject stopPosition ] ] ] ] ]
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
PWBASTEventTriggeringOrPosting >> eventInvocationType [
	^ eventInvocationType
]

{ #category : #accessing }
PWBASTEventTriggeringOrPosting >> eventInvocationType: anObject [
	eventInvocationType := anObject
]

{ #category : #accessing }
PWBASTEventTriggeringOrPosting >> functionArguments [
	^ functionArguments
]

{ #category : #accessing }
PWBASTEventTriggeringOrPosting >> functionArguments: anObject [
	functionArguments := anObject
]

{ #category : #comparing }
PWBASTEventTriggeringOrPosting >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ identifiers hash
		bitXor:
			(arrayPositions hash
				bitXor:
					(eventInvocationType hash
						bitXor:
							(functionArguments hash
								bitXor: (startPosition hash bitXor: stopPosition hash))))
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
