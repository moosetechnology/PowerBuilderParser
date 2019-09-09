Class {
	#name : #PWBCommitCommentExtractorIslandGrammar,
	#superclass : #PP2CompositeNode,
	#instVars : [
		'commitComment',
		'ticketNumber',
		'author',
		'date',
		'water',
		'file',
		'interestingCommitCommentData'
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
			#(author date ticketNumber);
		rulesToIgnore: #(file water);
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
	^ '//' parser , '*' parser star trim , 'Fin' parser trim not
		, interestingCommitCommentData negate star
		,
			((PP2PossesiveRepeatingNode on: interestingCommitCommentData , interestingCommitCommentData negate star)
				min: 2;
				yourself) , water star
]

{ #category : #accessing }
PWBCommitCommentExtractorIslandGrammar >> date [
	^ (#digit parser times: 2) , $/ parser
		, ((#digit parser times: 2) , $/ parser) optional
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
PWBCommitCommentExtractorIslandGrammar >> interestingCommitCommentData [
	^ author / date / ticketNumber
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
