"
I am a parser to parse .sru powerbuilder files (User object files) and .srw powerbuilder files (Window files)
"
Class {
	#name : #PWBUserObjectParser,
	#superclass : #PWBAbstractParser,
	#instVars : [
		'typeDeclaration',
		'withinClause',
		'fromClause',
		'attributes',
		'attribute',
		'triggerDefinition',
		'endForward',
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
		'tryCatch'
	],
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #parsing }
PWBUserObjectParser class >> supportedExtensions [
	^ {'sru' . 'srw'}
]

{ #category : #accessing }
PWBUserObjectParser >> accessModifier [
	^ self parserFor: #('public' 'private')
]

{ #category : #accessing }
PWBUserObjectParser >> assignationStatement [ 
	^ super assignationStatement 
]

{ #category : #accessing }
PWBUserObjectParser >> attribute [
	^ variableDeclarations
]

{ #category : #accessing }
PWBUserObjectParser >> attributes [
	^ (eventAttribute / attribute separatedBy: blank) , blank
]

{ #category : #accessing }
PWBUserObjectParser >> callStatement [
	^ super callStatement
]

{ #category : #accessing }
PWBUserObjectParser >> case [
	^ 'case' token, blank, expressionList, blank, statements optional
]

{ #category : #accessing }
PWBUserObjectParser >> caseElse [
	^ 'case' token , blank , 'else' token , blank , statements optional
]

{ #category : #accessing }
PWBUserObjectParser >> chooseCase [
	^ 'choose' token , blank , 'case' token , blank , expression , blank
		, (case separatedBy: blank) , blank , (caseElse , blank) optional
		, 'end choose' token
]

{ #category : #accessing }
PWBUserObjectParser >> customCallStatement [
	^ 'call' token , blank , 'super' token , '::' parser , identifier
]

{ #category : #accessing }
PWBUserObjectParser >> dirtyStatement [
	^ #newline parser negate plus
]

{ #category : #accessing }
PWBUserObjectParser >> doLoopUntil [
	^ 'do' token , blank , statements , blank , 'loop' token , blank , 'until' token , blank
		, expression
]

{ #category : #accessing }
PWBUserObjectParser >> doLoopWhile [
	^ 'do' token , blank , statements , blank , 'loop' token , blank , 'while' token , blank
		, expression
]

{ #category : #accessing }
PWBUserObjectParser >> doUntilLoop [
	^ 'do' token , blank , 'until' token , blank , expression , blank , statements , blank
		, 'loop' token
]

{ #category : #accessing }
PWBUserObjectParser >> doWhileLoop [
	^ 'do' token , blank , 'while' token , blank , expression , blank , statements , blank
		, 'loop' token
]

{ #category : #accessing }
PWBUserObjectParser >> endForward [ 
	^ 'end forward' parser
]

{ #category : #accessing }
PWBUserObjectParser >> eventAttribute [
	^ 'event' token , blank , type , blank , (arguments / variable)
]

{ #category : #accessing }
PWBUserObjectParser >> eventDeclaration [
	^ 'event' token , blank , eventReferenceName , $; parser
		, (customCallStatement , $; parser) optional , blank
		, statements optional , blank , (self endOf: 'event')
]

{ #category : #accessing }
PWBUserObjectParser >> eventReferenceName [
	^ (identifier , '::' parser) optional , identifier
		, arguments optional
]

{ #category : #accessing }
PWBUserObjectParser >> expressionList [
	^ expression separatedBy: $, parser
]

{ #category : #accessing }
PWBUserObjectParser >> file [
	^ typeVariable / typeDeclaration / functionDefinition
		/ subroutineDefinition / endForward / globalVariableDeclaration
		/ triggerDefinition / eventDeclaration / prototypesDeclaration
		separatedBy: blank
]

{ #category : #accessing }
PWBUserObjectParser >> forLoop [
	^ 'for' token , blank , assignationStatement , blank , 'to' token , blank , expression , (blank , 'step' token , blank , expression) optional , newlines , statements
		, newlines , 'next' token
]

{ #category : #accessing }
PWBUserObjectParser >> fromClause [
	^ 'from' token , blank , customType , blank
]

{ #category : #accessing }
PWBUserObjectParser >> functionDeclaration [
	^ functionSignature
]

{ #category : #accessing }
PWBUserObjectParser >> functionDefinition [
	^ functionSignature , $; parser , blank , statements , blank , (self endOf: 'function')
]

{ #category : #accessing }
PWBUserObjectParser >> functionInvocation [ 
	^ super functionInvocation 
]

{ #category : #accessing }
PWBUserObjectParser >> functionSignature [
	^ accessModifier , blank , 'function' parser , blank , type , blank , identifier , blank
		, arguments
]

{ #category : #accessing }
PWBUserObjectParser >> globalVariableDeclaration [
	^ 'global' parser , blank , type , blank , variable
]

{ #category : #accessing }
PWBUserObjectParser >> gotoStatement [
	^ 'goto' token , blank , identifier
]

{ #category : #accessing }
PWBUserObjectParser >> ifStatement [
	^ super ifStatement
]

{ #category : #accessing }
PWBUserObjectParser >> programStep [
	"It is a program step that can be the target of a goto"
	^ identifier , $: parser
]

{ #category : #accessing }
PWBUserObjectParser >> prototypesDeclaration [
	^ 'forward prototypes' parser , blank , (functionDeclaration / subroutineDeclaration separatedBy: blank)
		, blank , (self endOf: 'prototypes')
]

{ #category : #accessing }
PWBUserObjectParser >> sqlCommitStatement [
	^ 'commit' token , blank , (usingClause , blank) optional , $; parser
]

{ #category : #accessing }
PWBUserObjectParser >> sqlQuery [
	^ (self parserIgnoringCaseFor: #('select' 'update' 'delete' 'insert')) , blank
		, (string / $; parser negate) plus , $; parser
]

{ #category : #accessing }
PWBUserObjectParser >> sqlRollbackStatement [
	^ 'rollback' token , blank , (usingClause , blank) optional
		, $; parser
]

{ #category : #accessing }
PWBUserObjectParser >> statement [
	^ programStep / gotoStatement / sqlRollbackStatement
		/ sqlCommitStatement / sqlQuery / tryCatch / forLoop / chooseCase
		/ doWhileLoop / doUntilLoop / doLoopWhile / doLoopUntil
		/ variableDeclarations / super statement
]

{ #category : #accessing }
PWBUserObjectParser >> subroutineDeclaration [
	^ subroutineSignature
]

{ #category : #accessing }
PWBUserObjectParser >> subroutineDefinition [
	^ subroutineSignature , $; parser , blank , statements , blank , (self endOf: 'subroutine')
]

{ #category : #accessing }
PWBUserObjectParser >> subroutineSignature [
	^ accessModifier , blank , 'subroutine' parser , blank , identifier , blank , arguments
]

{ #category : #accessing }
PWBUserObjectParser >> transactionObject [
	^ identifier
]

{ #category : #accessing }
PWBUserObjectParser >> triggerDefinition [
	^ 'on' token , blank , identifier , $. parser , eventType , blank , statements , blank
		, (self endOf: 'on')
]

{ #category : #accessing }
PWBUserObjectParser >> tryCatch [
	^ 'try' token , (newlines , statements) optional
		,
			(blank , 'catch' token , blank , arguments
				, (newlines , statements) optional) star , blank
		, (self endOf: 'try')
]

{ #category : #accessing }
PWBUserObjectParser >> typeDeclaration [
	^ ('global' parser , blank) parser optional , 'type' parser , blank , customType , blank
		, ('enumerated' parser , blank) optional , fromClause , ($` parser , customType, blank) optional
		, withinClause optional , attributes optional , (self endOf: 'type')
]

{ #category : #accessing }
PWBUserObjectParser >> typeVariable [
	^ 'type variables' parser , blank , attributes optional , blank , (self endOf: 'variables')
]

{ #category : #accessing }
PWBUserObjectParser >> usingClause [
	^ 'using' token , blank , transactionObject
]

{ #category : #accessing }
PWBUserObjectParser >> variableDeclarations [
	^ type , blank
		, (identifier , assignation optional separatedBy: $, parser trim)
]

{ #category : #accessing }
PWBUserObjectParser >> withinClause [
	^ 'within' token , blank , customType , blank
]
