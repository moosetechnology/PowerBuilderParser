Class {
	#name : #PWBASTAttributeAccess,
	#superclass : #Object,
	#instVars : [
		'uncheckedIdentifier',
		'arrayInformation',
		'startPosition',
		'stopPosition'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #comparing }
PWBASTAttributeAccess >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ uncheckedIdentifier = anObject uncheckedIdentifier
		and: [ arrayInformation = anObject arrayInformation
				and: [ startPosition = anObject startPosition
						and: [ stopPosition = anObject stopPosition ] ] ]
]

{ #category : #visiting }
PWBASTAttributeAccess >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTAttributeAccess: self
]

{ #category : #accessing }
PWBASTAttributeAccess >> arrayInformation [
	^ arrayInformation
]

{ #category : #accessing }
PWBASTAttributeAccess >> arrayInformation: anObject [
	arrayInformation := anObject
]

{ #category : #comparing }
PWBASTAttributeAccess >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ uncheckedIdentifier hash
		bitXor:
			(arrayInformation hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
PWBASTAttributeAccess >> startPosition [
	^ startPosition
]

{ #category : #accessing }
PWBASTAttributeAccess >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
PWBASTAttributeAccess >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
PWBASTAttributeAccess >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
PWBASTAttributeAccess >> uncheckedIdentifier [
	^ uncheckedIdentifier
]

{ #category : #accessing }
PWBASTAttributeAccess >> uncheckedIdentifier: anObject [
	uncheckedIdentifier := anObject
]
