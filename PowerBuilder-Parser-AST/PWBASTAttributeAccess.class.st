Class {
	#name : #PWBASTAttributeAccess,
	#superclass : #Object,
	#instVars : [
		'uncheckedIdentifier',
		'arrayPosition',
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
PWBASTAttributeAccess >> arrayPosition [
	^ arrayPosition
]

{ #category : #accessing }
PWBASTAttributeAccess >> arrayPosition: anObject [
	arrayPosition := anObject
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
