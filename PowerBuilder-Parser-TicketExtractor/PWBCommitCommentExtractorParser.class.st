Class {
	#name : #PWBCommitCommentExtractorParser,
	#superclass : #PWBCommitCommentExtractorIslandGrammar,
	#category : #'PowerBuilder-Parser-TicketExtractor'
}

{ #category : #rules }
PWBCommitCommentExtractorParser >> author [
	<generated>
	^ super author flatten  ==> [ :production | PWBTicketASTAuthor new author: production; yourself ]
]

{ #category : #rules }
PWBCommitCommentExtractorParser >> commitComment [
	<generated>
	^ super commitComment
		==> [ :production | 
			PWBTicketASTCommitComment new
				interestingCommitCommentDatas: ((production at: 5) collect: [ :subProduction | subProduction at: 1 ]);
				yourself ]
]

{ #category : #rules }
PWBCommitCommentExtractorParser >> date [
	<generated>
	^ super date flatten  ==> [ :production | PWBTicketASTDate new date: production; yourself ]
]

{ #category : #rules }
PWBCommitCommentExtractorParser >> file [
	<generated>
	^ super file
		==> [ :production | 
			PWBTicketASTFile new
				commitComments: (production reject: #isCharacter);
				yourself ]
]

{ #category : #rules }
PWBCommitCommentExtractorParser >> interestingCommitCommentData [
	<generated>
	^ super interestingCommitCommentData
		==> [ :production | 
			PWBTicketASTInterestingCommitCommentData new
				interestingCommitCommentData: production;
				yourself ]
]

{ #category : #helpers }
PWBCommitCommentExtractorParser >> rejectSeparators: anArray [
	<generated>
	^ anArray withIndexSelect: [:anElement :anIndex | anIndex odd]
]

{ #category : #helpers }
PWBCommitCommentExtractorParser >> selectSeparators: anArray [
	<generated>
	^ anArray withIndexSelect: [:anElement :anIndex | anIndex even]
]

{ #category : #rules }
PWBCommitCommentExtractorParser >> ticketNumber [
	<generated>
	^ super ticketNumber flatten  ==> [ :production | PWBTicketASTTicketNumber new ticketNumber: production; yourself ]
]
