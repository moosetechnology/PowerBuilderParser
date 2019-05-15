Class {
	#name : #PWBAbstractGrammar,
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
		'defaultVariable',
		'reservedKeyword',
		'ifMultiLine',
		'ifSingleLine',
		'newlines',
		'specialStatement',
		'exitStatement',
		'uncheckedIdentifier',
		'notExpression',
		'expressionWithSign',
		'access',
		'attributeAccess',
		'arrayPosition',
		'accessOrType',
		'spaces',
		'defaultEventType',
		'postFixOperator',
		'arrayWithSize',
		'elseIf',
		'else',
		'elseOnLine',
		'this',
		'arrayDesignation',
		'argumentOption',
		'continueStatement',
		'parenthesedArray'
	],
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #parsing }
PWBAbstractGrammar class >> obtainASTFrom: content fileExtension: fileExtension [
	^ (self allSubclasses
		detect: [ :class | 
			(class name endsWith: 'Parser')
				and: [ class supportExtension: fileExtension ] ]) new
		parse: content
]

{ #category : #parsing }
PWBAbstractGrammar class >> obtainASTFromFile: aFile [
	| stream result |
	stream := aFile readStream.
	stream encoder: ZnUTF8Encoder new.
	result := self
		obtainASTFrom: stream contents
		fileExtension: aFile extension.
	result isPetit2Failure
		ifFalse: [ result
				fileName: aFile base;
				fileExtension: aFile extension ].
	^ result
]

{ #category : #parsing }
PWBAbstractGrammar class >> parse: content fileExtension: fileExtension [
	^ (self allSubclasses detect: [ :class | class supportExtension: fileExtension ]) new
		parse: content
]

{ #category : #parsing }
PWBAbstractGrammar class >> scripts [
	"just to store it"

	| keep |
	'/Users/larcheveque/Google Drive/Professionnel/INRIA/PowerBuilder/export'
		asFileReference files
		do: [ :aFile | 
			| outputFile stream |
			outputFile := ('/Users/larcheveque/Google Drive/Professionnel/INRIA/PowerBuilder/cleanExport/'
				, aFile basename) asFileReference.
			outputFile ensureDelete.
			outputFile
				writeStreamDo: [ :s | 
					keep := false.
					stream := aFile readStream.
					stream encoder: ZnUTF16Encoder new.
					ZnCharacterEncoder detectEncoding: aFile.
					stream contents
						linesDo: [ :aLine | 
							keep
								ifFalse: [ keep := (aLine beginsWith: '$') not ]
								ifTrue: [ s nextPutAll: aLine.
									s cr ] ] ] ].
	'/Users/larcheveque/Google Drive/Professionnel/INRIA/PowerBuilder/cleanExport'
		asFileReference files
		do: [ :aFile | 
			| outputFile |
			outputFile := ('/Users/larcheveque/Google Drive/Professionnel/INRIA/PowerBuilder/cleanExportWithoutComments/'
				, aFile basename) asFileReference.
			outputFile ensureDelete.
			outputFile
				writeStreamDo:
					[ :s | s nextPutAll: (PWBPreprocessor parse: aFile readStream contents) ] ].
	'/Users/larcheveque/Google Drive/Professionnel/INRIA/PowerBuilder/cleanExportWithoutComments'
		asFileReference files
		collect: [ :aFile | 
			| result stream |
			stream := aFile readStream.
			stream encoder: ZnUTF8Encoder new.
			result := PWBAbstractGrammar
				parse: stream contents
				fileExtension: aFile extension.
			result isPetit2Failure
				ifTrue: [ result debugObject file: aFile ]
				ifFalse: [ result ] ]
]

{ #category : #parsing }
PWBAbstractGrammar class >> supportExtension: extension [
	^ self supportedExtensions includes: extension
]

{ #category : #parsing }
PWBAbstractGrammar class >> supportedExtensions [
	^ self subclassResponsibility
]

{ #category : #accessing }
PWBAbstractGrammar >> access [
	^ variable , arrayPosition optional , attributeAccess star
]

{ #category : #accessing }
PWBAbstractGrammar >> accessOrType [
	"This rule is for case where we are not sure if it is a variable or a type, only the resolution will solve it so a custom type will be considered as a variable"

	^ parametrizedType / basicType / access	
]

{ #category : #accessing }
PWBAbstractGrammar >> argument [
	^ (argumentOption , blank) optional , type , blank , identifier
		, arrayWithSize optional
]

{ #category : #accessing }
PWBAbstractGrammar >> argumentOption [
	^ 'ref' token / 'readonly' token
]

{ #category : #accessing }
PWBAbstractGrammar >> arguments [
	^ $( parser , blank , (argument separatedBy: $, parser trim) optional , blank , $) parser
]

{ #category : #accessing }
PWBAbstractGrammar >> array [
	^ ${ parser , (expression trim separatedBy: $, parser ) , $} parser
]

{ #category : #accessing }
PWBAbstractGrammar >> arrayDesignation [
	^ '[' parser , ']' parser
]

{ #category : #accessing }
PWBAbstractGrammar >> arrayPosition [
	^ '[' parser , expression, ']' parser
]

{ #category : #accessing }
PWBAbstractGrammar >> arrayWithSize [
	^ spaces optional , $[ parser , spaces optional
		, (expression separatedBy: $, parser) optional , spaces optional
		, $] parser
]

{ #category : #accessing }
PWBAbstractGrammar >> assignation [
	^ blank , ($= parser / '+=' parser / '-=' parser / '/=' parser / '*=' parser) , blank
		, expression
]

{ #category : #accessing }
PWBAbstractGrammar >> assignationStatement [
	^ access , assignation 
]

{ #category : #accessing }
PWBAbstractGrammar >> attributeAccess [
	<reify: #(arrayPosition / arrayDesignation) into: #arrayInformation>
	^ $. parser trim , uncheckedIdentifier , $( parser not
		, (arrayPosition / arrayDesignation) optional
]

{ #category : #accessing }
PWBAbstractGrammar >> basicType [
	^ self
		parserCaseInsensitiveFor: #('long' 'datetime' 'date' 'integer' 'string')
]

{ #category : #accessing }
PWBAbstractGrammar >> blank [
	^ (#blank parser / #newline parser) star
]

{ #category : #accessing }
PWBAbstractGrammar >> booleanValue [
	^ 'yes' token / 'no' token
]

{ #category : #accessing }
PWBAbstractGrammar >> callStatement [
	<reify: #(variable / defaultVariable) into: #variable>
	^ 'call' token , blank , (variable / defaultVariable)
		, ($` parser , identifier) optional , '::' parser trim , eventType
]

{ #category : #accessing }
PWBAbstractGrammar >> condition [
	^ expression
]

{ #category : #accessing }
PWBAbstractGrammar >> constant [
	^ (#letter parser plus , $! parser) flatten
]

{ #category : #accessing }
PWBAbstractGrammar >> continueStatement [
	^ 'continue' token
]

{ #category : #accessing }
PWBAbstractGrammar >> createInstruction [
	^ 'create' token, blank, variable
]

{ #category : #accessing }
PWBAbstractGrammar >> customType [
	^ identifier
]

{ #category : #accessing }
PWBAbstractGrammar >> defaultEventType [
	^ self
		parserCaseInsensitiveFor:
			#('ButtonClicked' 'ButtonClicking' 'Clicked' 'DoubleClicked' 'ItemChanged' 'ItemError' 'ItemFocusChanged' 'RButtonDown' 'RowFocusChanged' 'RowFocusChanging' 'create' 'destroy')
]

{ #category : #accessing }
PWBAbstractGrammar >> defaultVariable [
	^ self parserCaseInsensitiveFor: #('this' 'super')
]

{ #category : #accessing }
PWBAbstractGrammar >> else [
	^ 'else' token , blank , statements optional
]

{ #category : #accessing }
PWBAbstractGrammar >> elseIf [
	^ 'elseif' token , blank , expression , blank , 'then' token , blank
		, statements optional
]

{ #category : #accessing }
PWBAbstractGrammar >> elseOnLine [
	^ spaces , 'else' token , spaces , statement
]

{ #category : #accessing }
PWBAbstractGrammar >> endOf: aReservedWord [
	"It seems that a / can finish anything"
	^ ('end' token, spaces, aReservedWord token) 
]

{ #category : #accessing }
PWBAbstractGrammar >> eventType [
	^ defaultEventType / identifier
]

{ #category : #accessing }
PWBAbstractGrammar >> exitStatement [
	^ 'exit' token
]

{ #category : #accessing }
PWBAbstractGrammar >> expression [
	<reify:
		#(expressionWithSign / operatorExpression / parenthesedExpression / parenthesedArray / expressionTerm)
	into: #expression>
	^ expressionWithSign / operatorExpression / parenthesedExpression
		/ parenthesedArray / expressionTerm , methodInvocation star
]

{ #category : #accessing }
PWBAbstractGrammar >> expressionTerm [
	^ notExpression / functionInvocation / constant / array / createInstruction / number / string / accessOrType / booleanValue / defaultVariable
]

{ #category : #accessing }
PWBAbstractGrammar >> expressionWithSign [
	^ $+ parser / $- parser , spaces optional, expression
]

{ #category : #accessing }
PWBAbstractGrammar >> file [
	^ self subclassResponsibility 
]

{ #category : #accessing }
PWBAbstractGrammar >> functionArgument [
	^ (argumentOption , spaces) optional , expression
]

{ #category : #accessing }
PWBAbstractGrammar >> functionArguments [
	^ $( parser , (functionArgument trim separatedBy: $, parser) optional
		, spaces optional , $) parser
]

{ #category : #accessing }
PWBAbstractGrammar >> functionInvocation [
	<rename: #identifier into: #functionName>
	^ (defaultVariable , '::' parser trim) optional , identifier , blank
		, functionArguments
]

{ #category : #accessing }
PWBAbstractGrammar >> identifier [
	self flag: #TODO.	"improve identifier to accept thisCustomer for example"
	^ ((reservedKeyword not , (#letter parser / $_ parser)
		, (#letter parser / $_ parser / $- parser / #digit parser) star)
		/
			(reservedKeyword
				, (#letter parser / $_ parser / $- parser / #digit parser) plus))
		flatten
]

{ #category : #accessing }
PWBAbstractGrammar >> ifMultiLine [
	^ 'if' token , blank , condition , blank , 'then' token , newlines
		, statements optional
		,
			(blank optional, elseIf) star
		, (blank optional, else) optional
		, newlines optional , (self endOf: 'if')
]

{ #category : #accessing }
PWBAbstractGrammar >> ifSingleLine [
	^ 'if' token , spaces , condition , spaces , 'then' token , spaces
		, statement , elseOnLine optional
]

{ #category : #accessing }
PWBAbstractGrammar >> ifStatement [
	^ ifMultiLine / ifSingleLine
]

{ #category : #accessing }
PWBAbstractGrammar >> methodInvocation [
	^ spaces optional , $. parser , spaces optional , uncheckedIdentifier
		, blank , functionArguments
]

{ #category : #accessing }
PWBAbstractGrammar >> newlines [
	^ (#blank parser star , #newline parser) plus, blank
]

{ #category : #accessing }
PWBAbstractGrammar >> notExpression [
	^ 'not' token , blank , expression
]

{ #category : #accessing }
PWBAbstractGrammar >> number [
	^ ($+ parser / $- parser , blank) optional , #digit parser plus
		, ($. parser , #digit parser plus) optional
]

{ #category : #accessing }
PWBAbstractGrammar >> operatorExpression [
	<reify: #(parenthesedExpression / expressionTerm) into: #left>
	<rename: #expression into: #right>
	^ parenthesedExpression / expressionTerm , methodInvocation star
		, blank
		,
			(self
				parserCaseInsensitiveFor:
					#('+' '-' '#' '^' '*' '/' '=' '<=' '>=' '>' '<>' '<' "','" 'AND' 'OR' 'and' 'or'))
		, blank , expression
]

{ #category : #accessing }
PWBAbstractGrammar >> parametrizedType [
	^ ((#('char' 'decimal') collect: #parser) reduce: [ :a :b | a / b ])
		,
			(($( parser , number , $) parser) / (spaces, ${ parser , number trim , $} parser))
]

{ #category : #accessing }
PWBAbstractGrammar >> parenthesedArray [
	^ $( parser , expression trim , ($, parser , expression trim) plus
		, $) parser
]

{ #category : #accessing }
PWBAbstractGrammar >> parenthesedExpression [
	^ $( parser , blank , expression , blank , $) parser
]

{ #category : #accessing }
PWBAbstractGrammar >> parserCaseInsensitiveFor: aCollectionOfString [
	^ (aCollectionOfString collect: [:s | s parser caseInsensitive ]) reduce: [ :a :b | a / b ]
]

{ #category : #accessing }
PWBAbstractGrammar >> parserFor: aCollectionOfString [
	^ (aCollectionOfString collect: #parser) reduce: [ :a :b | a / b ]
]

{ #category : #accessing }
PWBAbstractGrammar >> postFixOperator [
	^ access , blank , ('--' parser / '++' parser)
]

{ #category : #accessing }
PWBAbstractGrammar >> reservedKeyword [
	^ self
		parserCaseInsensitiveFor:
			#('this' 'end' 'if' 'return' 'loop' 'while' 'elseif' 'else' 'do' 'exit' 'next' 'for' 'call' 'not' 'case' 'try' 'catch' 'super' 'finally' 'continue')
]

{ #category : #accessing }
PWBAbstractGrammar >> returnStatement [
	^ 'return' token , (spaces , expression) optional
]

{ #category : #accessing }
PWBAbstractGrammar >> spaces [
	^ (Character space parser / Character tab parser) plus
]

{ #category : #accessing }
PWBAbstractGrammar >> specialStatement [
	^ returnStatement / exitStatement / continueStatement
]

{ #category : #accessing }
PWBAbstractGrammar >> start [
	^ (file , blank) end optimize ==> [ :production | production first ]
]

{ #category : #accessing }
PWBAbstractGrammar >> statement [
	^ specialStatement / assignationStatement / callStatement / ifStatement
		/ functionInvocation / postFixOperator / expression
]

{ #category : #accessing }
PWBAbstractGrammar >> statements [
	^ statement separatedBy: $; parser trim / blank
]

{ #category : #accessing }
PWBAbstractGrammar >> string [
	^ ($" parser , ('~"' parser / $" parser negate) star , $" parser)
		/ ($' parser , ('~''' parser / $' parser negate) star , $' parser)
]

{ #category : #accessing }
PWBAbstractGrammar >> this [
	^ 'this.' token
]

{ #category : #accessing }
PWBAbstractGrammar >> type [
	^ parametrizedType / basicType / customType 
]

{ #category : #accessing }
PWBAbstractGrammar >> uncheckedIdentifier [
	^ (#letter parser / $_ parser) , (#letter parser / $_ parser / #digit parser) star
]

{ #category : #accessing }
PWBAbstractGrammar >> variable [
	^ this optional , identifier , $( parser not , arrayWithSize optional
]

{ #category : #accessing }
PWBAbstractGrammar >> variableOrType [
	"This rule is for case where we are not sure if it is a variable or a type, only the resolution will solve it so a custom type will be considered as a variable"

	^ parametrizedType / basicType / access	
]
