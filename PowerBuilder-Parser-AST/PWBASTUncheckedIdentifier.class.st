Class {
	#name : #PWBASTUncheckedIdentifier,
	#superclass : #Object,
	#instVars : [
		'uncheckedIdentifier'
	],
	#category : #'PowerBuilder-Parser-AST'
}

{ #category : #visiting }
PWBASTUncheckedIdentifier >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBASTUncheckedIdentifier: self
]

{ #category : #accessing }
PWBASTUncheckedIdentifier >> uncheckedIdentifier [
	^ uncheckedIdentifier
]

{ #category : #accessing }
PWBASTUncheckedIdentifier >> uncheckedIdentifier: anObject [
	uncheckedIdentifier := anObject
]
