Class {
	#name : #PWBTicketASTFile,
	#superclass : #Object,
	#instVars : [
		'commitComments'
	],
	#category : #'PowerBuilder-Parser-TicketExtractor'
}

{ #category : #visiting }
PWBTicketASTFile >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBTicketASTFile: self
]

{ #category : #accessing }
PWBTicketASTFile >> commitComments [
	^ commitComments
]

{ #category : #accessing }
PWBTicketASTFile >> commitComments: anObject [
	commitComments := anObject
]
