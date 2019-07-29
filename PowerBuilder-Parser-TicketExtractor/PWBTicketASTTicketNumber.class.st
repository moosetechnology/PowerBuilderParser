Class {
	#name : #PWBTicketASTTicketNumber,
	#superclass : #Object,
	#instVars : [
		'ticketNumber'
	],
	#category : #'PowerBuilder-Parser-TicketExtractor'
}

{ #category : #visiting }
PWBTicketASTTicketNumber >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBTicketASTTicketNumber: self
]

{ #category : #accessing }
PWBTicketASTTicketNumber >> ticketNumber [
	^ ticketNumber
]

{ #category : #accessing }
PWBTicketASTTicketNumber >> ticketNumber: anObject [
	ticketNumber := anObject
]
