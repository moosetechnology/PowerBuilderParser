"
I am a parser to parse .sru powerbuilder files (User object files) and .srw powerbuilder files (Window files)
"
Class {
	#name : #PWBUserObjectGrammar,
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
		'dirtyStatement',
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
		'endForward'
	],
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #parsing }
PWBUserObjectGrammar class >> supportedExtensions [
	^ {'sru' . 'srw'}
]

{ #category : #accessing }
PWBUserObjectGrammar >> accessModifier [
	^ self parserFor: #('public' 'private' 'protected')
]

{ #category : #accessing }
PWBUserObjectGrammar >> assignationStatement [ 
	^ super assignationStatement 
]

{ #category : #accessing }
PWBUserObjectGrammar >> attribute [
	^ variableDeclarations
]

{ #category : #accessing }
PWBUserObjectGrammar >> attributes [
	^ (eventAttribute / attribute separatedBy: blank) , blank
]

{ #category : #accessing }
PWBUserObjectGrammar >> callStatement [
	^ super callStatement
]

{ #category : #accessing }
PWBUserObjectGrammar >> case [
	^ 'case' token, blank, expressionList, blank, statements optional
]

{ #category : #accessing }
PWBUserObjectGrammar >> caseElse [
	^ 'case' token , blank , 'else' token , blank , statements optional
]

{ #category : #accessing }
PWBUserObjectGrammar >> chooseCase [
	^ 'choose' token , blank , 'case' token , blank , expression , blank
		, (case separatedBy: blank) , blank , (caseElse , blank) optional
		, 'end choose' token
]

{ #category : #accessing }
PWBUserObjectGrammar >> closeSqlCursor [
	^ 'close' token , spaces , identifier , spaces optional , $; parser
]

{ #category : #accessing }
PWBUserObjectGrammar >> customCallStatement [
	^ 'call' token , blank , 'super' token , '::' parser , identifier
]

{ #category : #accessing }
PWBUserObjectGrammar >> declareCursor [
	^ 'declare' token , spaces , identifier , spaces , 'cursor' token
		, spaces , 'for' token , blank, sqlQuery
]

{ #category : #accessing }
PWBUserObjectGrammar >> descriptor [
	^ 'descriptor' token , spaces , expression
]

{ #category : #accessing }
PWBUserObjectGrammar >> dirtyStatement [
	^ #newline parser negate plus
]

{ #category : #accessing }
PWBUserObjectGrammar >> doLoopUntil [
	^ 'do' token , blank , statements , blank , 'loop' token , blank , 'until' token , blank
		, expression
]

{ #category : #accessing }
PWBUserObjectGrammar >> doLoopWhile [
	^ 'do' token , blank , statements , blank , 'loop' token , blank , 'while' token , blank
		, expression
]

{ #category : #accessing }
PWBUserObjectGrammar >> doUntilLoop [
	^ 'do' token , blank , 'until' token , blank , expression , blank , statements , blank
		, 'loop' token
]

{ #category : #accessing }
PWBUserObjectGrammar >> doWhileLoop [
	^ 'do' token , blank , 'while' token , blank , expression , blank , statements , blank
		, 'loop' token
]

{ #category : #accessing }
PWBUserObjectGrammar >> endForward [
	^ self endOf: 'forward'
]

{ #category : #accessing }
PWBUserObjectGrammar >> eventAttribute [
	^ 'event' token , blank , type , blank , (arguments / variable)
]

{ #category : #accessing }
PWBUserObjectGrammar >> eventDeclaration [
	^ 'event' token , blank , eventReferenceName , $; parser
		, (customCallStatement , $; parser) optional , blank
		, statements optional , blank , (self endOf: 'event')
]

{ #category : #accessing }
PWBUserObjectGrammar >> eventReferenceName [
	^ (identifier , '::' parser) optional , identifier
		, arguments optional
]

{ #category : #accessing }
PWBUserObjectGrammar >> expressionList [
	^ expression separatedBy: $, parser
]

{ #category : #accessing }
PWBUserObjectGrammar >> file [
	^ typeVariable / typeDeclaration / functionDefinition
		/ subroutineDefinition / endForward / globalVariableDeclaration
		/ triggerDefinition / eventDeclaration / prototypesDeclaration
		separatedBy: blank
]

{ #category : #accessing }
PWBUserObjectGrammar >> forLoop [
	^ 'for' token , blank , assignationStatement , blank , 'to' token , blank , expression , (blank , 'step' token , blank , expression) optional , newlines , statements
		, newlines , 'next' token
]

{ #category : #accessing }
PWBUserObjectGrammar >> fromClause [
	^ 'from' token , blank , customType 
]

{ #category : #accessing }
PWBUserObjectGrammar >> functionDeclaration [
	^ functionSignature
]

{ #category : #accessing }
PWBUserObjectGrammar >> functionDefinition [
	^ functionSignature , $; parser , blank , statements , blank , (self endOf: 'function')
]

{ #category : #accessing }
PWBUserObjectGrammar >> functionInvocation [ 
	^ super functionInvocation 
]

{ #category : #accessing }
PWBUserObjectGrammar >> functionSignature [
	^ accessModifier , blank , 'function' parser , blank , type , blank , identifier , blank
		, arguments
]

{ #category : #accessing }
PWBUserObjectGrammar >> globalVariableDeclaration [
	^ 'global' parser , blank , type , blank , variable
]

{ #category : #accessing }
PWBUserObjectGrammar >> gotoStatement [
	^ 'goto' token , blank , identifier
]

{ #category : #accessing }
PWBUserObjectGrammar >> ifStatement [
	^ super ifStatement
]

{ #category : #accessing }
PWBUserObjectGrammar >> openSqlCursor [
	^ 'open' token , spaces , identifier , spaces optional , $; parser
]

{ #category : #accessing }
PWBUserObjectGrammar >> programStep [
	"It is a program step that can be the target of a goto"
	^ identifier , $: parser
]

{ #category : #accessing }
PWBUserObjectGrammar >> prototypesDeclaration [
	^ 'forward prototypes' parser , blank , (functionDeclaration / subroutineDeclaration separatedBy: blank)
		, blank , (self endOf: 'prototypes')
]

{ #category : #accessing }
PWBUserObjectGrammar >> sqlCommitStatement [
	^ 'commit' token , blank , (usingClause , blank) optional , $; parser
]

{ #category : #accessing }
PWBUserObjectGrammar >> sqlQuery [
	^ (self parserCaseInsensitiveFor: #('select' 'update' 'delete' 'insert' 'fetch')) , blank
		, (string / $; parser negate) plus , $; parser
]

{ #category : #accessing }
PWBUserObjectGrammar >> sqlRollbackStatement [
	^ 'rollback' token , blank , (usingClause , blank) optional
		, $; parser
]

{ #category : #accessing }
PWBUserObjectGrammar >> statement [
	^ programStep / gotoStatement / sqlRollbackStatement / openSqlCursor
		/ closeSqlCursor / sqlCommitStatement / declareCursor / sqlQuery
		/ tryCatch / forLoop / chooseCase / doWhileLoop / doUntilLoop
		/ doLoopWhile / doLoopUntil / variableDeclarations / super statement
]

{ #category : #accessing }
PWBUserObjectGrammar >> subroutineDeclaration [
	^ subroutineSignature
]

{ #category : #accessing }
PWBUserObjectGrammar >> subroutineDefinition [
	^ subroutineSignature , $; parser , blank , statements , blank , (self endOf: 'subroutine')
]

{ #category : #accessing }
PWBUserObjectGrammar >> subroutineSignature [
	^ accessModifier , blank , 'subroutine' parser , blank , identifier , blank , arguments
]

{ #category : #accessing }
PWBUserObjectGrammar >> transactionObject [
	^ identifier
]

{ #category : #accessing }
PWBUserObjectGrammar >> triggerDefinition [
	^ 'on' token , blank , identifier , $. parser , eventType , blank , statements , blank
		, (self endOf: 'on')
]

{ #category : #accessing }
PWBUserObjectGrammar >> tryCatch [
	^ 'try' token , (newlines , statements) optional
		,
			(blank , 'catch' token , blank , arguments
				, (newlines , statements) optional) star , blank
		, (self endOf: 'try')
]

{ #category : #accessing }
PWBUserObjectGrammar >> typeDeclaration [
	^ ('global' token , blank) optional , 'type' parser , blank
		, customType , (blank , 'enumerated' token) optional
		, (blank , fromClause) , ($` parser , customType) optional
		, (blank , withinClause) optional , (spaces , descriptor) optional
		, (blank , attributes) optional , blank optional
		, (self endOf: 'type')
]

{ #category : #accessing }
PWBUserObjectGrammar >> typeVariable [
	^ 'type variables' parser , blank , attributes optional , blank , (self endOf: 'variables')
]

{ #category : #accessing }
PWBUserObjectGrammar >> usingClause [
	^ 'using' token , blank , transactionObject
]

{ #category : #accessing }
PWBUserObjectGrammar >> variableDeclarations [
	^ type , blank
		, (variable , assignation optional separatedBy: $, parser trim)
]

{ #category : #accessing }
PWBUserObjectGrammar >> withinClause [
	^ 'within' token , blank , customType 
]
