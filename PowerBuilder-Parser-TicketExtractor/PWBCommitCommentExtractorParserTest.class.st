Class {
	#name : #PWBCommitCommentExtractorParserTest,
	#superclass : #PP2CompositeNodeTest,
	#category : #'PowerBuilder-Parser-TicketExtractor'
}

{ #category : #accessing }
PWBCommitCommentExtractorParserTest >> parserClass [
	^ PWBCommitCommentExtractorIslandGrammar
]

{ #category : #accessing }
PWBCommitCommentExtractorParserTest >> testCommitComment1 [
	self parse: '// FT-32037 $chan$ le 26/03/2009' rule: #commitComment
]

{ #category : #accessing }
PWBCommitCommentExtractorParserTest >> testCommitComment2 [
	self parse: '//32038 $Loic$ 26/01/2009' rule: #commitComment
]

{ #category : #accessing }
PWBCommitCommentExtractorParserTest >> testCommitComment3 [
	self parse: '//*** Fiche 27825 $Fatiha$ 30/12/2008' rule: #commitComment
]

{ #category : #accessing }
PWBCommitCommentExtractorParserTest >> testCommitComment4 [
	self parse: '// 41696 - $Adrien$ le 22/09/2010 ' rule: #commitComment
]
