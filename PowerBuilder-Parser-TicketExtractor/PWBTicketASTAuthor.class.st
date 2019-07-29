Class {
	#name : #PWBTicketASTAuthor,
	#superclass : #Object,
	#instVars : [
		'author'
	],
	#category : #'PowerBuilder-Parser-TicketExtractor'
}

{ #category : #visiting }
PWBTicketASTAuthor >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBTicketASTAuthor: self
]

{ #category : #accessing }
PWBTicketASTAuthor >> author [
	^ author
]

{ #category : #accessing }
PWBTicketASTAuthor >> author: anObject [
	author := anObject
]
