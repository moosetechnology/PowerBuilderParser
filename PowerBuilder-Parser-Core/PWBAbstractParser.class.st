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
		'functionArgument'
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
	^ type, blank, identifier
]

{ #category : #accessing }
PWBAbstractParser >> arguments [
	^ $( parser , blank , (argument separatedBy: $, parser) optional , blank , $) parser
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
	^ self parserFor: #('long' 'datetime' 'date' 'integer')
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
PWBAbstractParser >> createInstruction [
	^ 'create' parser, blank, variable
]

{ #category : #accessing }
PWBAbstractParser >> customType [
	^ identifier
]

{ #category : #accessing }
PWBAbstractParser >> eventType [
	^ self
		parserIgnoringCaseFor:
			#('ButtonClicked' 'ButtonClicking' 'Clicked' 'DoubleClicked' 'ItemChanged' 'ItemError' 'ItemFocusChanged' 'RButtonDown' 'RowFocusChanged' 'RowFocusChanging' 'create' 'destroy')
]

{ #category : #accessing }
PWBAbstractParser >> expression [
	^ operatorExpression / parenthesedExpression / expressionTerm
]

{ #category : #accessing }
PWBAbstractParser >> expressionTerm [
	^ array / createInstruction / number / string / variableOrType / booleanValue 
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
PWBAbstractParser >> number [
	^ ($+ parser / $- parser) optional , #digit parser plus
]

{ #category : #accessing }
PWBAbstractParser >> operatorExpression [
	^ parenthesedExpression / expressionTerm , blank
		, (self parserFor: #('+' '-' '#' '^' '*' '/' '=' '>' '<' '<=' '>=' '<>' ',' 'AND' 'OR'))
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
PWBAbstractParser >> start [
	^ file end optimize
]

{ #category : #accessing }
PWBAbstractParser >> statements [
	^ assignationStatement / callStatement / functionInvocation separatedBy: blank
]

{ #category : #accessing }
PWBAbstractParser >> string [
	^ $" parser , #any parser starLazy , $" parser
]

{ #category : #accessing }
PWBAbstractParser >> type [
	^ parametrizedType / basicType / customType 
]

{ #category : #accessing }
PWBAbstractParser >> variable [
	^ 'this.' parser optional , identifier , ($. parser , identifier) star
		, '[]' parser optional
]

{ #category : #accessing }
PWBAbstractParser >> variableOrType [
	"This rule is for case where we are not sure if it is a variable or a type, only the resolution will solve it"

	^ type / variable	"booleanValue not ,"
]
