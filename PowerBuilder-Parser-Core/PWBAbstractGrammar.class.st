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
		'parenthesedArray',
		'dynamicMethodInvocation',
		'regularMethodInvocation',
		'identifierCharacter',
		'intervalExpression',
		'time',
		'specialVariable',
		'expressionAction',
		'createUsingInstruction',
		'eventInvocation',
		'eventTriggeringOrPosting',
		'eventName',
		'eventWord',
		'eventLong'
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
	| result |
	aFile
		readStreamDo: [ :stream | 
			stream encoder: ZnUTF8Encoder new.
			result := self
				obtainASTFrom: stream contents
				fileExtension: aFile extension.
			result isPetit2Failure
				ifFalse: [ result
						fileName: aFile base;
						fileExtension: aFile extension ] ].
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
	<reify: #(variable / specialVariable) into: #accessed>
	^ variable / specialVariable , arrayPosition optional
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
	^ '[' parser trimRight , ']' parser trimLeft 
]

{ #category : #accessing }
PWBAbstractGrammar >> arrayPosition [
	^ '[' parser trim , (expression separatedBy: $, parser trim)
		, ']' parser trimLeft 
]

{ #category : #accessing }
PWBAbstractGrammar >> arrayWithSize [
	<reify: #(intervalExpression / expression) into: #expression>
	^ spaces optional , $[ parser , spaces optional
		,
			(intervalExpression / expression separatedBy: $, parser trim) optional
		, spaces optional , $] parser
]

{ #category : #accessing }
PWBAbstractGrammar >> assignation [
	^ ($= parser / '+=' parser / '-=' parser / '/=' parser / '*=' parser)
		trim , expression
]

{ #category : #accessing }
PWBAbstractGrammar >> assignationStatement [
	^ accessOrType , expressionAction optional , assignation 
]

{ #category : #accessing }
PWBAbstractGrammar >> attributeAccess [
	<reify: #(arrayPosition / arrayDesignation) into: #arrayInformation>
	^ $. parser trim , uncheckedIdentifier , (blank , $( parser) not
		, (spaces optional , (arrayPosition / arrayDesignation)) optional
]

{ #category : #accessing }
PWBAbstractGrammar >> basicType [
	^ (self parserCaseInsensitiveFor: self basicTypeArray)
		, identifierCharacter not
]

{ #category : #accessing }
PWBAbstractGrammar >> basicTypeArray [
	^ #('long' 'datetime' 'date' 'integer' 'string' 'character' 'char' 'boolean' 'decimal' 'any' 'double')
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
	^ (#letter parser plus , #digit parser star, $! parser) flatten
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
PWBAbstractGrammar >> createUsingInstruction [
	^ 'create' token , 'using' token trimSpaces , expression
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
PWBAbstractGrammar >> dynamicMethodInvocation [
	^ spaces optional , $. parser , 'dynamic' token, spaces , uncheckedIdentifier
		, blank , functionArguments
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
PWBAbstractGrammar >> eventInvocation [
	^ ('this.' token , spaces optional) optional , 'event' token , identifier trim
		, functionArguments
]

{ #category : #'as yet unclassified' }
PWBAbstractGrammar >> eventLong [
	^ functionArgument trim
]

{ #category : #'as yet unclassified' }
PWBAbstractGrammar >> eventName [
	<reify: #(string / constant / accessOrType) into: #eventName>
	^ (string / constant / accessOrType) trim
]

{ #category : #'as yet unclassified' }
PWBAbstractGrammar >> eventTriggeringOrPosting [
	^ ('this' token , spaces optional , $. parser) optional
		,
			(spaces optional , identifier , spaces optional
				, arrayPosition optional , $. parser , spaces optional) star
		, ('triggerEvent' token / 'postEvent' token) , blank , $( parser
		, eventName , ($, parser trim , eventWord) optional
		, ($, parser , eventLong) optional , $) parser
]

{ #category : #accessing }
PWBAbstractGrammar >> eventType [
	^ defaultEventType / identifier
]

{ #category : #'as yet unclassified' }
PWBAbstractGrammar >> eventWord [
	^ functionArgument trim
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
		/ parenthesedArray / expressionTerm , expressionAction optional
]

{ #category : #accessing }
PWBAbstractGrammar >> expressionAction [
	<reify: #(methodInvocation / attributeAccess)
	into: #action>
	^methodInvocation / attributeAccess
		, expressionAction optional
]

{ #category : #accessing }
PWBAbstractGrammar >> expressionTerm [
	^ notExpression / functionInvocation / createUsingInstruction
		/ constant / array / createInstruction / time / number / string
		/ eventInvocation / accessOrType / booleanValue / defaultVariable
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
	<rename: #uncheckedIdentifier into: #functionName>
	^ (defaultVariable , '::' parser trim) optional , uncheckedIdentifier , blank
		, functionArguments
]

{ #category : #accessing }
PWBAbstractGrammar >> identifier [
	^ ((reservedKeyword not , uncheckedIdentifier)
		/ (reservedKeyword , identifierCharacter plus)) flatten
]

{ #category : #accessing }
PWBAbstractGrammar >> identifierCharacter [
	^ (#word parser / $_ parser / $- parser)
]

{ #category : #accessing }
PWBAbstractGrammar >> ifMultiLine [
	^ 'if' token , condition trimSpaces , 'then' token , newlines
		, statements optional , (blank optional , elseIf) star
		, (blank optional , else) optional , newlines optional
		, (self endOf: 'if')
]

{ #category : #accessing }
PWBAbstractGrammar >> ifSingleLine [
	^ 'if' token , condition trimSpaces , 'then' token , spaces
		, statement , elseOnLine optional
]

{ #category : #accessing }
PWBAbstractGrammar >> ifStatement [
	^ ifMultiLine / ifSingleLine
]

{ #category : #accessing }
PWBAbstractGrammar >> intervalExpression [
	<rename: #expression into: #(from to)>
	^ expression , 'to' token trim , expression
]

{ #category : #accessing }
PWBAbstractGrammar >> methodInvocation [
	^ dynamicMethodInvocation / regularMethodInvocation
]

{ #category : #helpers }
PWBAbstractGrammar >> multiLinesRepeated: aParser [
	^ (aParser separatedBy: $; parser trim / blank)
		, (blank optional , $; parser) optional
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
	^ ($+ parser / $- parser , blank) optional
		,
			((#digit parser plus , ($. parser , #digit parser plus) optional)
				/ ($. parser , #digit parser plus))
]

{ #category : #accessing }
PWBAbstractGrammar >> operatorExpression [
	<reify: #(parenthesedExpression / expressionTerm) into: #left>
	<rename: #expression into: #right>
	^ parenthesedExpression / expressionTerm , expressionAction optional
		, blank
		,
			(self
				parserCaseInsensitiveFor:
					#('+' '-' '#' '^' '*' '/' '=' '<=' '>=' '>' '<>' '<' 'AND' 'OR' 'and' 'or'))
		, blank , expression	"','"
]

{ #category : #accessing }
PWBAbstractGrammar >> parametrizedType [
	^ (self parserFor: #('char' 'decimal' 'blob'))
		,
			(($( parser , number , $) parser)
				/ (spaces optional , ${ parser , number trim , $} parser))
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

{ #category : #helpers }
PWBAbstractGrammar >> parserCaseInsensitiveFor: aCollectionOfString [
	^ (aCollectionOfString collect: [ :s | s parser caseInsensitive ])
		reduce: [ :a :b | a / b ]
]

{ #category : #helpers }
PWBAbstractGrammar >> parserFor: aCollectionOfString [
	^ (aCollectionOfString collect: #parser) reduce: [ :a :b | a / b ]
]

{ #category : #'as yet unclassified' }
PWBAbstractGrammar >> postEvent [
	^ 'postEvent' token
]

{ #category : #accessing }
PWBAbstractGrammar >> postFixOperator [
	^ expression , spaces optional , ('--' parser / '++' parser)
]

{ #category : #accessing }
PWBAbstractGrammar >> regularMethodInvocation [
	"in opposition to dynamicMethodInvocation"
	^ spaces optional , $. parser , spaces optional , uncheckedIdentifier
		, blank , functionArguments
]

{ #category : #accessing }
PWBAbstractGrammar >> reservedKeyword [
	^ self
		parserCaseInsensitiveFor:
			#('this' 'end' 'if' 'return' 'loop' 'while' 'elseif' 'else' 'do' 'exit' 'next' 'for' 'call' 'not' 'case' 'try' 'catch' 'super' 'finally' 'continue' 'dynamic'), self basicTypeArray
]

{ #category : #accessing }
PWBAbstractGrammar >> returnStatement [
	^ 'return' token , (spaces , expression) optional , $! token optional
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
PWBAbstractGrammar >> specialVariable [
	^ this
]

{ #category : #accessing }
PWBAbstractGrammar >> start [
	^ (file , blank) end optimize ==> [ :production | production first ]
]

{ #category : #accessing }
PWBAbstractGrammar >> statement [
	^ specialStatement / assignationStatement / callStatement
		/ ifStatement / eventTriggeringOrPosting/ functionInvocation
		/ postFixOperator / expression
]

{ #category : #accessing }
PWBAbstractGrammar >> statements [
	^ (statement separatedBy: $; parser trim / blank)
		, (blank, $; parser) optional
]

{ #category : #accessing }
PWBAbstractGrammar >> string [
	| protectedCharacter |
	protectedCharacter := $~ parser , #any parser.
	^ ($" parser , (protectedCharacter / $" parser negate) star
		, $" parser)
		/ ($' parser , (protectedCharacter / $' parser negate) star , $' parser)
]

{ #category : #accessing }
PWBAbstractGrammar >> this [
	^ 'this' token
]

{ #category : #accessing }
PWBAbstractGrammar >> time [
	^ (#digit parser times: 2) , $: parser , (#digit parser times: 2)
		, $: parser , (#digit parser times: 2)
		, ($. parser , (#digit parser times: 4)) optional
]

{ #category : #accessing }
PWBAbstractGrammar >> type [
	^ parametrizedType / basicType / customType 
]

{ #category : #accessing }
PWBAbstractGrammar >> uncheckedIdentifier [
	"have to manage the dynamic token because its a special case"

	^ ('dynamic' token , spaces) not , 'elseif' token not
		, (#letter parser / $_ parser) , identifierCharacter star
]

{ #category : #accessing }
PWBAbstractGrammar >> variable [
	<rename: #arrayWithSize into: #arrayDefinition>
	^ identifier , $% parser optional
		, $( parser not , arrayWithSize optional
]

{ #category : #accessing }
PWBAbstractGrammar >> variableOrType [
	"This rule is for case where we are not sure if it is a variable or a type, only the resolution will solve it so a custom type will be considered as a variable"

	^ parametrizedType / basicType / access	
]
