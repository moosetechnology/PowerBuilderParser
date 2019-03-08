Class {
	#name : #PWBASTAttributeAccess,
	#superclass : #Object,
	#instVars : [
		'uncheckedIdentifier',
		'arrayPosition'
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
PWBASTAttributeAccess >> uncheckedIdentifier [
	^ uncheckedIdentifier
]

{ #category : #accessing }
PWBASTAttributeAccess >> uncheckedIdentifier: anObject [
	uncheckedIdentifier := anObject
]
