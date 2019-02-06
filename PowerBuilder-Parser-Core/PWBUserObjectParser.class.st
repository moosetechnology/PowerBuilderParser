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
		'forLoop'
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
PWBUserObjectParser >> case [
	^ 'case' token, blank, expressionList, blank, statements
]

{ #category : #accessing }
PWBUserObjectParser >> chooseCase [
	^ 'choose' token , blank , 'case' token , blank , expression , blank
		, (case separatedBy: blank) , blank , 'end choose' token
]

{ #category : #accessing }
PWBUserObjectParser >> customCallStatement [
	^ 'call' parser / 'CALL' parser , blank , 'super' parser , '::' parser , identifier
]

{ #category : #accessing }
PWBUserObjectParser >> doLoopWhile [
	^ 'do' token , blank , statements , blank , 'loop' token , blank , 'while' token , blank
		, expression
]

{ #category : #accessing }
PWBUserObjectParser >> endForward [ 
	^ 'end forward' parser
]

{ #category : #accessing }
PWBUserObjectParser >> eventAttribute [
	^ 'event' parser , blank , type , blank , (arguments / variable)
]

{ #category : #accessing }
PWBUserObjectParser >> eventDeclaration [
	^ 'event' parser , blank , identifier , arguments optional , $; parser
		, (customCallStatement , $; parser) optional , blank , statements optional , blank , 'end event' parser
]

{ #category : #accessing }
PWBUserObjectParser >> expressionList [
	^ expression separatedBy: $, parser
]

{ #category : #accessing }
PWBUserObjectParser >> file [
	^ typeVariable / typeDeclaration / endForward / globalVariableDeclaration
		/ triggerDefinition / eventDeclaration / prototypesDeclaration separatedBy: blank
]

{ #category : #accessing }
PWBUserObjectParser >> forLoop [
	^ 'for' token , blank , assignationStatement , blank , 'to' token , blank , expression , (blank , 'step' token , blank , expression) optional , newlines , statements
		, newlines , 'next' token
]

{ #category : #accessing }
PWBUserObjectParser >> fromClause [
	^ 'from' parser , blank , customType , blank
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
PWBUserObjectParser >> functionSignature [
	^ accessModifier , blank , 'function' parser , blank , type , blank , identifier , blank
		, arguments
]

{ #category : #accessing }
PWBUserObjectParser >> globalVariableDeclaration [
	^ 'global' parser , blank , type , blank , variable
]

{ #category : #accessing }
PWBUserObjectParser >> ifStatement [
	^ super ifStatement
]

{ #category : #accessing }
PWBUserObjectParser >> prototypesDeclaration [
	^ 'forward prototypes' parser , blank , (functionDeclaration / subroutineDeclaration separatedBy: blank)
		, blank , (self endOf: 'prototypes')
]

{ #category : #accessing }
PWBUserObjectParser >> statement [
	^ forLoop / chooseCase / functionDefinition / doLoopWhile / variableDeclarations / super statement
]

{ #category : #accessing }
PWBUserObjectParser >> subroutineDeclaration [
	^ accessModifier , blank , 'subroutine' parser , blank , identifier , blank , arguments
]

{ #category : #accessing }
PWBUserObjectParser >> triggerDefinition [
	^ 'on' parser , blank , identifier , $. parser , eventType , blank , statements , blank
		, 'end on' parser
]

{ #category : #accessing }
PWBUserObjectParser >> typeDeclaration [
	^ ('global' parser , blank) parser optional , 'type' parser , blank , customType , blank
		, 'enumerated' parser trim optional , fromClause , withinClause optional
		, attributes optional , 'end type' parser
]

{ #category : #accessing }
PWBUserObjectParser >> typeVariable [
	^ 'type variables' parser , blank , attributes optional , blank , (self endOf: 'variables')
]

{ #category : #accessing }
PWBUserObjectParser >> variableDeclarations [
	^ type , (blank , identifier , assignation optional separatedBy: $, parser)
]

{ #category : #accessing }
PWBUserObjectParser >> withinClause [
	^ 'within' parser , blank , customType , blank
]
