"
I am a parser to parse .sru powerbuilder files (User object files) and .srw powerbuilder files (Window files)
"
Class {
	#name : #PWBCommonGrammar,
	#superclass : #PWBAbstractGrammar,
	#instVars : [
		'typeDeclaration',
		'withinClause',
		'fromClause',
		'attributes',
		'attribute',
		'triggerDefinition',
		'globalVariableDeclaration',
		'eventAttribute',
		'typeVariable',
		'customCallStatement',
		'eventDeclaration',
		'functionDeclaration',
		'accessModifier',
		'prototypesDeclaration',
		'subroutineDeclaration',
		'case',
		'expressionList',
		'chooseCase',
		'functionSignature',
		'functionDefinition',
		'doLoopWhile',
		'variableDeclarations',
		'forLoop',
		'sqlQuery',
		'transactionObject',
		'sqlCommitStatement',
		'doWhileLoop',
		'programStep',
		'gotoStatement',
		'caseElse',
		'usingClause',
		'sqlRollbackStatement',
		'subroutineSignature',
		'subroutineDefinition',
		'doUntilLoop',
		'doLoopUntil',
		'eventReferenceName',
		'tryCatch',
		'declareCursor',
		'openSqlCursor',
		'closeSqlCursor',
		'descriptor',
		'endForward',
		'variableAssignation',
		'catchBlock',
		'commonFile'
	],
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #parsing }
PWBCommonGrammar class >> supportedExtensions [
	^ #(srs sru srw srf srm sra)
]

{ #category : #accessing }
PWBCommonGrammar >> accessModifier [
	^ self parserFor: #('public' 'private' 'protected' 'global')
]

{ #category : #accessing }
PWBCommonGrammar >> assignationStatement [ 
	^ super assignationStatement 
]

{ #category : #accessing }
PWBCommonGrammar >> attribute [
	^ variableDeclarations
]

{ #category : #accessing }
PWBCommonGrammar >> attributes [
	<reify: #(eventAttribute / attribute) into: #attributes>
	^ (eventAttribute / attribute separatedBy: blank) , blank
]

{ #category : #accessing }
PWBCommonGrammar >> case [
	^ 'case' token, blank, expressionList, blank, statements optional
]

{ #category : #accessing }
PWBCommonGrammar >> caseElse [
	^ 'case' token , blank , 'else' token , blank , statements optional
]

{ #category : #accessing }
PWBCommonGrammar >> catchBlock [
	^ 'catch' token , blank , arguments
		, (newlines , statements) optional
]

{ #category : #accessing }
PWBCommonGrammar >> chooseCase [
	^ 'choose' token , blank , 'case' token , blank , expression , blank
		, (case separatedBy: blank) , blank , (caseElse , blank) optional
		, 'end choose' token
]

{ #category : #accessing }
PWBCommonGrammar >> closeSqlCursor [
	^ 'close' token , spaces , identifier , spaces optional , $; parser
]

{ #category : #accessing }
PWBCommonGrammar >> commonFile [
	<reify:
		#(typeVariable / typeDeclaration / functionDefinition / subroutineDefinition / endForward / globalVariableDeclaration / triggerDefinition / eventDeclaration / prototypesDeclaration)
	into: #fileStatement>
	^ typeVariable / typeDeclaration / functionDefinition
		/ subroutineDefinition / endForward / globalVariableDeclaration
		/ triggerDefinition / eventDeclaration / prototypesDeclaration
		separatedBy: blank
]

{ #category : #accessing }
PWBCommonGrammar >> customCallStatement [
	^ 'call' token , blank , 'super' token , '::' parser , identifier
]

{ #category : #accessing }
PWBCommonGrammar >> declareCursor [
	^ 'declare' token , spaces , identifier , spaces , 'cursor' token
		, spaces , 'for' token , blank, sqlQuery
]

{ #category : #accessing }
PWBCommonGrammar >> descriptor [
	^ 'descriptor' token , spaces , expression
]

{ #category : #accessing }
PWBCommonGrammar >> doLoopUntil [
	^ 'do' token , blank , statements , blank , 'loop' token , blank , 'until' token , blank
		, expression
]

{ #category : #accessing }
PWBCommonGrammar >> doLoopWhile [
	^ 'do' token , blank , statements , blank , 'loop' token , blank , 'while' token , blank
		, expression
]

{ #category : #accessing }
PWBCommonGrammar >> doUntilLoop [
	^ 'do' token , blank , 'until' token , blank , expression , blank , statements , blank
		, 'loop' token
]

{ #category : #accessing }
PWBCommonGrammar >> doWhileLoop [
	^ 'do' token , blank , 'while' token , blank , expression , blank , statements , blank
		, 'loop' token
]

{ #category : #accessing }
PWBCommonGrammar >> endForward [
	^ self endOf: 'forward'
]

{ #category : #accessing }
PWBCommonGrammar >> eventAttribute [
	<reify: #(arguments / variable) into: #attribute>
	^ 'event' token , blank , type , blank , (arguments / variable)
]

{ #category : #accessing }
PWBCommonGrammar >> eventDeclaration [
	^ 'event' token , blank , eventReferenceName , $; parser
		, (customCallStatement , $; parser) optional , blank
		, statements optional , blank , (self endOf: 'event')
]

{ #category : #accessing }
PWBCommonGrammar >> eventReferenceName [
	<rename: #identifier into: #(objectClass eventName)>
	^ (identifier , '::' parser) optional , identifier
		, arguments optional
]

{ #category : #accessing }
PWBCommonGrammar >> expressionList [
	^ expression separatedBy: $, parser
]

{ #category : #accessing }
PWBCommonGrammar >> file [
	<rename: #commonFile into: #content>
	^ commonFile
]

{ #category : #accessing }
PWBCommonGrammar >> forLoop [
	<rename: #expression into: #(endExpression stepExpression)>
	^ 'for' token , blank , assignationStatement , blank , 'to' token , blank , expression , (blank , 'step' token , blank , expression) optional , newlines , statements
		, newlines , 'next' token
]

{ #category : #accessing }
PWBCommonGrammar >> fromClause [
	^ 'from' token , blank , customType 
]

{ #category : #accessing }
PWBCommonGrammar >> functionDeclaration [
	^ functionSignature
]

{ #category : #accessing }
PWBCommonGrammar >> functionDefinition [
	^ functionSignature , $; parser , blank , statements , blank , (self endOf: 'function')
]

{ #category : #accessing }
PWBCommonGrammar >> functionSignature [
	^ accessModifier , blank , 'function' parser , blank , type , blank , identifier , blank
		, arguments
]

{ #category : #accessing }
PWBCommonGrammar >> globalVariableDeclaration [
	^ 'global' parser , blank , type , blank , variable
]

{ #category : #accessing }
PWBCommonGrammar >> gotoStatement [
	^ 'goto' token , blank , identifier
]

{ #category : #accessing }
PWBCommonGrammar >> ifStatement [
	^ super ifStatement
]

{ #category : #accessing }
PWBCommonGrammar >> openSqlCursor [
	^ 'open' token , spaces , identifier , spaces optional , $; parser
]

{ #category : #accessing }
PWBCommonGrammar >> programStep [
	"It is a program step that can be the target of a goto"
	^ identifier , $: parser
]

{ #category : #accessing }
PWBCommonGrammar >> prototypesDeclaration [
	<reify: #(functionDeclaration / subroutineDeclaration) into: #declaration>
	^ 'forward prototypes' parser , blank , (functionDeclaration / subroutineDeclaration separatedBy: blank)
		, blank , (self endOf: 'prototypes')
]

{ #category : #accessing }
PWBCommonGrammar >> sqlCommitStatement [
	^ 'commit' token , blank , (usingClause , blank) optional , $; parser
]

{ #category : #accessing }
PWBCommonGrammar >> sqlQuery [
	^ (self parserCaseInsensitiveFor: #('select' 'update' 'delete' 'insert' 'fetch')) , blank
		, (string / $; parser negate) plus , $; parser
]

{ #category : #accessing }
PWBCommonGrammar >> sqlRollbackStatement [
	^ 'rollback' token , blank , (usingClause , blank) optional
		, $; parser
]

{ #category : #accessing }
PWBCommonGrammar >> statement [
	<reifyAllInto: #statement>
	^ programStep / gotoStatement / sqlRollbackStatement / openSqlCursor
		/ closeSqlCursor / sqlCommitStatement / declareCursor / sqlQuery
		/ tryCatch / forLoop / chooseCase / doWhileLoop / doUntilLoop
		/ doLoopWhile / doLoopUntil / variableDeclarations / super statement
]

{ #category : #accessing }
PWBCommonGrammar >> subroutineDeclaration [
	^ subroutineSignature
]

{ #category : #accessing }
PWBCommonGrammar >> subroutineDefinition [
	^ subroutineSignature , $; parser , blank , statements , blank , (self endOf: 'subroutine')
]

{ #category : #accessing }
PWBCommonGrammar >> subroutineSignature [
	^ accessModifier , blank , 'subroutine' parser , blank , identifier , blank , arguments
]

{ #category : #accessing }
PWBCommonGrammar >> transactionObject [
	^ identifier
]

{ #category : #accessing }
PWBCommonGrammar >> triggerDefinition [
	^ 'on' token , blank , identifier , $. parser , eventType , blank , statements , blank
		, (self endOf: 'on')
]

{ #category : #accessing }
PWBCommonGrammar >> tryCatch [
	^ 'try' token , (newlines , statements) optional
		,
			(blank , catchBlock) star , blank
		, (self endOf: 'try')
]

{ #category : #accessing }
PWBCommonGrammar >> typeDeclaration [
	<rename: #customType into: #(type eventType)>
	^ ('global' token , blank) optional , 'type' parser , blank
		, customType , (blank , 'enumerated' token) optional
		, (blank , fromClause) , ($` parser , customType) optional
		, (blank , withinClause) optional , (spaces , descriptor) optional
		, (blank , attributes) optional , blank optional
		, (self endOf: 'type')
]

{ #category : #accessing }
PWBCommonGrammar >> typeVariable [
	^ 'type variables' parser , blank , attributes optional , blank , (self endOf: 'variables')
]

{ #category : #accessing }
PWBCommonGrammar >> usingClause [
	^ 'using' token , blank , transactionObject
]

{ #category : #accessing }
PWBCommonGrammar >> variableAssignation [
	^ variable , assignation optional
]

{ #category : #accessing }
PWBCommonGrammar >> variableDeclarations [
	^ type , blank
		, (variableAssignation separatedBy: $, parser trim)
]

{ #category : #accessing }
PWBCommonGrammar >> withinClause [
	^ 'within' token , blank , customType 
]
