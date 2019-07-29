Class {
	#name : #PWBCommitCommentExtractorIslandGrammar,
	#superclass : #PP2CompositeNode,
	#instVars : [
		'commitComment',
		'ticketNumber',
		'author',
		'date',
		'water',
		'file'
	],
	#category : #'PowerBuilder-Parser-TicketExtractor'
}

{ #category : #generating }
PWBCommitCommentExtractorIslandGrammar class >> generate [
	<script>
	PPTASTGenerator
		generateEverythingFrom: PWBCommitCommentExtractorIslandGrammar
		generationStrategy: self generationStrategy
]

{ #category : #'as yet unclassified' }
PWBCommitCommentExtractorIslandGrammar class >> generationStrategy [
	^ PPTASTGeneratorStrategy new
		rulesToFlatten:
			#(author date ticketNumber water);
		rulesToIgnore: #(file);
		parserPackage: #'PowerBuilder-Parser-TicketExtractor';
		parserClass: #PWBCommitCommentExtractorParser;
		astPackage: #'PowerBuilder-Parser-TicketExtractor';
		astPrefix: #PWBTicketAST;
		visitorPackage: #'PowerBuilder-Parser-TicketExtractor';
		visitorClass: #PWBTicketASTAbstractVisitor;
		keepPositions: false;
		yourself
]

{ #category : #accessing }
PWBCommitCommentExtractorIslandGrammar >> author [
	^ $$ parser , #letter parser plus , $$ parser
]

{ #category : #accessing }
PWBCommitCommentExtractorIslandGrammar >> commitComment [
	<reify: #(author / date / water) into: #other>
	^ '//' parser , '*' parser star trim , 'Fiche' parser optional
		, #digit parser negate star , ticketNumber
		, (author / date / water) star
]

{ #category : #accessing }
PWBCommitCommentExtractorIslandGrammar >> date [
	^ (#digit parser times: 2) , $/ parser , (#digit parser times: 2)
		, $/ parser
		,
			((PP2PossesiveRepeatingNode on: #digit parser)
				min: 2;
				max: 4;
				yourself)
]

{ #category : #accessing }
PWBCommitCommentExtractorIslandGrammar >> file [
	^ (commitComment / #any parser) plus
]

{ #category : #accessing }
PWBCommitCommentExtractorIslandGrammar >> start [
	^ file
]

{ #category : #accessing }
PWBCommitCommentExtractorIslandGrammar >> ticketNumber [
	^ #digit parser times: 5
]

{ #category : #accessing }
PWBCommitCommentExtractorIslandGrammar >> water [ 
	^ #newline parser negate
]
