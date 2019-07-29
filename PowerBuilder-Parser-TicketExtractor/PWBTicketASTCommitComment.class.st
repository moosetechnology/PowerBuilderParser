Class {
	#name : #PWBTicketASTCommitComment,
	#superclass : #Object,
	#instVars : [
		'ticketNumber',
		'others'
	],
	#category : #'PowerBuilder-Parser-TicketExtractor'
}

{ #category : #visiting }
PWBTicketASTCommitComment >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBTicketASTCommitComment: self
]

{ #category : #accessing }
PWBTicketASTCommitComment >> others [
	^ others
]

{ #category : #accessing }
PWBTicketASTCommitComment >> others: anObject [
	others := anObject
]

{ #category : #accessing }
PWBTicketASTCommitComment >> ticketNumber [
	^ ticketNumber
]

{ #category : #accessing }
PWBTicketASTCommitComment >> ticketNumber: anObject [
	ticketNumber := anObject
]
