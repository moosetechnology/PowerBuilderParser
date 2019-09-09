Class {
	#name : #PWBTicketASTInterestingCommitCommentData,
	#superclass : #Object,
	#instVars : [
		'interestingCommitCommentData'
	],
	#category : #'PowerBuilder-Parser-TicketExtractor'
}

{ #category : #visiting }
PWBTicketASTInterestingCommitCommentData >> acceptVisitor: aVisitor [
	<generated>
	^ aVisitor visitPWBTicketASTInterestingCommitCommentData: self
]

{ #category : #accessing }
PWBTicketASTInterestingCommitCommentData >> interestingCommitCommentData [
	^ interestingCommitCommentData
]

{ #category : #accessing }
PWBTicketASTInterestingCommitCommentData >> interestingCommitCommentData: anObject [
	interestingCommitCommentData := anObject
]
