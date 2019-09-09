Class {
	#name : #PWBCommitCommentExtractorParserTest,
	#superclass : #PP2CompositeNodeTest,
	#category : #'PowerBuilder-Parser-TicketExtractor'
}

{ #category : #accessing }
PWBCommitCommentExtractorParserTest >> parserClass [
	^ PWBCommitCommentExtractorIslandGrammar
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitComment1 [
	self parse: '// FT-32037 $chan$ le 26/03/2009' rule: #commitComment
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitComment10 [
	self parse: '// $Adrien$ 12/03/2008 - fiche navette 30905' rule: #commitComment
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitComment11 [
	self parse: '// ----- Martin 04/2004 fiche 11631 -----' rule: #commitComment
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitComment12 [
	self parse: '// ---- Martin 06/2004 fiche 06558 -----' rule: #commitComment
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitComment13 [
	self parse: '//-- Adrien -- le 12/02/2008 fiche 24723' rule: #commitComment
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitComment14 [
	self parse: '//Mis en commentaire par $Nath$ 53202 16/02/2012' rule: #commitComment
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitComment15 [
	self parse: '//$Greg$ le 17/11/2007, FN28814: Mise en instance de la variable IS_ENC_MAT' rule: #commitComment
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitComment16 [
	self parse: '//$JÈrÙme$ Fiche 23198 09/03/2007' rule: #commitComment
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitComment17 [
	self parse: '//$Greg$ le 27/02/2008, FN27303	' rule: #commitComment
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitComment18 [
	self parse: '// $Adrien$ le 24/11/2009 FN39633 ' rule: #commitComment
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitComment2 [
	self parse: '//32038 $Loic$ 26/01/2009' rule: #commitComment
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitComment3 [
	self parse: '//*** Fiche 27825 $Fatiha$ 30/12/2008' rule: #commitComment
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitComment4 [
	self parse: '// 41696 - $Adrien$ le 22/09/2010 ' rule: #commitComment
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitComment5 [
	self parse: '//Abdellali le 20/01/2004 Fiche 11827 EchÈancier Annuel' rule: #commitComment
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitComment6 [
	self parse: '// Abdellali le 30/05/2005 Fiche 15449' rule: #commitComment
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitComment7 [
	self parse: '//****** $Fatiha$ Fiche 13197 26/01/2006   retrouve seulement le numero du ticket' rule: #commitComment
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitComment8 [
	self parse: '//*** Fiches 39141 et 40095 $Fatiha$ 05/03/2010' rule: #commitComment
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitComment9 [
	self parse: '// ----- Martin 04/2004 fiche 11631 -----' rule: #commitComment
]

{ #category : #tests }
PWBCommitCommentExtractorParserTest >> testCommitCommentFail1 [
	self fail: '//*** Fin Fiche 49879' rule: #commitComment
]
