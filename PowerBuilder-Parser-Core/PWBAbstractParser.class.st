Class {
	#name : #PWBAbstractParser,
	#superclass : #PP2CompositeNode,
	#instVars : [
		'basicType',
		'blank',
		'booleanValue',
		'identifier',
		'number',
		'parametrizedType',
		'string',
		'type',
		'variable',
		'customType',
		'expression',
		'statements',
		'assignation',
		'assignationStatement',
		'createInstruction',
		'array',
		'variableOrType',
		'file',
		'parenthesedExpression',
		'operatorExpression',
		'expressionTerm',
		'callStatement',
		'eventType',
		'arguments',
		'argument',
		'functionInvocation',
		'functionArguments',
		'functionArgument',
		'constant',
		'statement',
		'ifStatement',
		'condition',
		'returnStatement',
		'methodInvocation',
		'defaultVariable'
	],
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #parsing }
PWBAbstractParser class >> parse: content fileExtension: fileExtension [
	^ (self allSubclasses detect: [ :class | class supportExtension: fileExtension ]) new
		parse: content
]

{ #category : #parsing }
PWBAbstractParser class >> parse: aString fileName: aString2 [ 
	self shouldBeImplemented.
]

{ #category : #parsing }
PWBAbstractParser class >> supportExtension: extension [
	^ self supportedExtensions includes: extension
]

{ #category : #parsing }
PWBAbstractParser class >> supportedExtensions [
	^ self subclassResponsibility
]

{ #category : #accessing }
PWBAbstractParser >> argument [
	^ ('ref' parser , blank) optional , type , blank , identifier
]

{ #category : #accessing }
PWBAbstractParser >> arguments [
	^ $( parser , blank , (argument separatedBy: $, parser trim) optional , blank , $) parser
]

{ #category : #accessing }
PWBAbstractParser >> array [
	^ ${ parser , (expression separatedBy: $, parser) , $} parser
]

{ #category : #accessing }
PWBAbstractParser >> assignation [
	^ blank, $= parser, blank, expression
]

{ #category : #accessing }
PWBAbstractParser >> assignationStatement [
	^ variable , assignation 
]

{ #category : #accessing }
PWBAbstractParser >> basicType [
	^ self parserFor: #('long' 'datetime' 'date' 'integer' 'string')
]

{ #category : #accessing }
PWBAbstractParser >> blank [
	^ (#blank parser / #newline parser) star
]

{ #category : #accessing }
PWBAbstractParser >> booleanValue [
	^ self parserFor: #('yes' 'no' 'YES' 'NO')
]

{ #category : #accessing }
PWBAbstractParser >> callStatement [
	^ ('call' parser / 'CALL' parser) , blank , variable , ($` parser , identifier) optional
		, '::' parser , eventType
]

{ #category : #accessing }
PWBAbstractParser >> condition [
	^ expression
]

{ #category : #accessing }
PWBAbstractParser >> constant [
	^ (#letter parser plus , $! parser) flatten
]

{ #category : #accessing }
PWBAbstractParser >> createInstruction [
	^ 'create' parser, blank, variable
]

{ #category : #accessing }
PWBAbstractParser >> customType [
	^ identifier
]

{ #category : #accessing }
PWBAbstractParser >> defaultVariable [
	^ self parserFor: #('this' 'super')
]

{ #category : #accessing }
PWBAbstractParser >> endOf: aReservedWord [
	"It seems that a / can finish anything"
	^ ('end ' parser, aReservedWord parser) / $/ parser
]

{ #category : #accessing }
PWBAbstractParser >> eventType [
	^ self
		parserIgnoringCaseFor:
			#('ButtonClicked' 'ButtonClicking' 'Clicked' 'DoubleClicked' 'ItemChanged' 'ItemError' 'ItemFocusChanged' 'RButtonDown' 'RowFocusChanged' 'RowFocusChanging' 'create' 'destroy')
]

{ #category : #accessing }
PWBAbstractParser >> expression [
	^ (operatorExpression / parenthesedExpression / expressionTerm), methodInvocation optional
]

{ #category : #accessing }
PWBAbstractParser >> expressionTerm [
	^ constant / array / createInstruction / number / string / variableOrType / booleanValue / defaultVariable
]

{ #category : #accessing }
PWBAbstractParser >> functionArgument [
	^ expression
]

{ #category : #accessing }
PWBAbstractParser >> functionArguments [
	^ $( parser , blank , (functionArgument separatedBy: $, parser) optional , blank , $) parser
]

{ #category : #accessing }
PWBAbstractParser >> functionInvocation [
	^ identifier, blank, functionArguments
]

{ #category : #accessing }
PWBAbstractParser >> identifier [
	self flag: #TODO. "improve identifier to accept thisCustomer for example"
	^ ('this' parser not , 'end' parser not , (#letter parser / $_ parser)
		, (#letter parser / $_ parser / #digit parser) star) flatten
]

{ #category : #accessing }
PWBAbstractParser >> ifStatement [
	^ 'if' parser , blank , condition , blank , 'then' parser , blank , statements , blank
		, (self endOf: 'if')
]

{ #category : #accessing }
PWBAbstractParser >> methodInvocation [
	^ $. parser, identifier, blank, functionArguments
]

{ #category : #accessing }
PWBAbstractParser >> number [
	^ ($+ parser / $- parser , blank) optional , #digit parser plus
]

{ #category : #accessing }
PWBAbstractParser >> operatorExpression [
	^ parenthesedExpression / expressionTerm , methodInvocation optional , blank
		,
			(self
				parserFor: #('+' '-' '#' '^' '*' '/' '=' '<=' '>=' '>' '<>' '<' ',' 'AND' 'OR' 'and' 'or'))
		, blank , expression
]

{ #category : #accessing }
PWBAbstractParser >> parametrizedType [
	^ ((#('char' 'decimal') collect: #parser) reduce: [ :a :b | a / b ]) , $( parser , number
		, $) parser
]

{ #category : #accessing }
PWBAbstractParser >> parenthesedExpression [
	^ $( parser , blank , expression , blank , $) parser
]

{ #category : #accessing }
PWBAbstractParser >> parserFor: aCollectionOfString [
	^ (aCollectionOfString collect: #parser) reduce: [ :a :b | a / b ]
]

{ #category : #accessing }
PWBAbstractParser >> parserIgnoringCaseFor: aCollectionOfString [
	^ (aCollectionOfString collect: [:s | s parser caseInsensitive ]) reduce: [ :a :b | a / b ]
]

{ #category : #accessing }
PWBAbstractParser >> returnStatement [
	^ 'return' parser
]

{ #category : #accessing }
PWBAbstractParser >> start [
	^ (file , blank) end optimize
]

{ #category : #accessing }
PWBAbstractParser >> statement [
	^ returnStatement / assignationStatement / callStatement / ifStatement / functionInvocation
		/ expression
]

{ #category : #accessing }
PWBAbstractParser >> statements [
	^ statement separatedBy: blank
]

{ #category : #accessing }
PWBAbstractParser >> string [
	^ ($" parser , #any parser starLazy , $" parser) / ($' parser , #any parser starLazy , $' parser)
]

{ #category : #accessing }
PWBAbstractParser >> type [
	^ parametrizedType / basicType / customType 
]

{ #category : #accessing }
PWBAbstractParser >> variable [
	^ 'this.' parser optional , identifier , $( parser not
		, ($. parser , identifier , $( parser not) star , '[]' parser optional
]

{ #category : #accessing }
PWBAbstractParser >> variableOrType [
	"This rule is for case where we are not sure if it is a variable or a type, only the resolution will solve it so a custom type will be considered as a variable"

	^ parametrizedType / basicType / variable	
]
