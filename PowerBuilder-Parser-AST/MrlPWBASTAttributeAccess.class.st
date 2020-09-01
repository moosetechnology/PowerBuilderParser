Class {
	#name : #MrlPWBASTAttributeAccess,
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
MrlPWBASTAttributeAccess >> = anObject [
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
MrlPWBASTAttributeAccess >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitMrlPWBASTAttributeAccess: self
]

{ #category : #accessing }
MrlPWBASTAttributeAccess >> arrayInformation [
	^ arrayInformation
]

{ #category : #accessing }
MrlPWBASTAttributeAccess >> arrayInformation: anObject [
	arrayInformation := anObject
]

{ #category : #comparing }
MrlPWBASTAttributeAccess >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ uncheckedIdentifier hash
		bitXor:
			(arrayInformation hash
				bitXor: (startPosition hash bitXor: stopPosition hash))
]

{ #category : #accessing }
MrlPWBASTAttributeAccess >> startPosition [
	^ startPosition
]

{ #category : #accessing }
MrlPWBASTAttributeAccess >> startPosition: anObject [
	startPosition := anObject
]

{ #category : #accessing }
MrlPWBASTAttributeAccess >> stopPosition [
	^ stopPosition
]

{ #category : #accessing }
MrlPWBASTAttributeAccess >> stopPosition: anObject [
	stopPosition := anObject
]

{ #category : #accessing }
MrlPWBASTAttributeAccess >> uncheckedIdentifier [
	^ uncheckedIdentifier
]

{ #category : #accessing }
MrlPWBASTAttributeAccess >> uncheckedIdentifier: anObject [
	uncheckedIdentifier := anObject
]
