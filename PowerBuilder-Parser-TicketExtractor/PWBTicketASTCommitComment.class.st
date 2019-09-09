Class {
	#name : #PWBTicketASTCommitComment,
	#superclass : #Object,
	#instVars : [
		'interestingCommitCommentDatas'
	],
	#category : #'PowerBuilder-Parser-TicketExtractor'
}

{ #category : #visiting }
PWBTicketASTCommitComment >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBTicketASTCommitComment: self
]

{ #category : #accessing }
PWBTicketASTCommitComment >> interestingCommitCommentDatas [
	^ interestingCommitCommentDatas
]

{ #category : #accessing }
PWBTicketASTCommitComment >> interestingCommitCommentDatas: anObject [
	interestingCommitCommentDatas := anObject
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

{ #category : #accessing }
PWBTicketASTCommitComment >> waters [
	^ waters
]

{ #category : #accessing }
PWBTicketASTCommitComment >> waters: anObject [
	waters := anObject
]
