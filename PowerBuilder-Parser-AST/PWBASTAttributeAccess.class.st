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
