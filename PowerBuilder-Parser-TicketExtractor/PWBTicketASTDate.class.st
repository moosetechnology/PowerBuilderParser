Class {
	#name : #PWBTicketASTDate,
	#superclass : #Object,
	#instVars : [
		'date'
	],
	#category : #'PowerBuilder-Parser-TicketExtractor'
}

{ #category : #visiting }
PWBTicketASTDate >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBTicketASTDate: self
]

{ #category : #accessing }
PWBTicketASTDate >> date [
	^ date
]

{ #category : #accessing }
PWBTicketASTDate >> date: anObject [
	date := anObject
]
