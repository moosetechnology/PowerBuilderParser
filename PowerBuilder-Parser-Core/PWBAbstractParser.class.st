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
		'defaultVariable',
		'reservedKeyword',
		'ifMultiLine',
		'ifSingleLine',
		'newlines',
		'specialStatement',
		'exitStatement',
		'uncheckedIdentifier',
		'notExpression',
		'variableIncrement',
		'expressionWithSign'
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
PWBAbstractParser class >> scripts [
	"just to store it"

	| outputFile keep stream commentParser fileCleaner |
	'/Users/larcheveque/Google Drive/Professionnel/INRIA/PowerBuilder/export' asFileReference
		files
		do: [ :aFile | 
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
	commentParser := ('/*' parser , '*/' parser negate plus , '*/' parser)
		/
			($& parser , ' ' parser star
				,
					'
' parser).
	fileCleaner := ((commentParser negate plus flatten , commentParser optional)
		==> [ :s | s first ]) plus
		==> [ :s | String streamContents: [ :str | s do: [ :string | str nextPutAll: string ] ] ].
	fileCleaner parse: 'testt /* comment */ of /* comment */ cleaning'.
	'/Users/larcheveque/Google Drive/Professionnel/INRIA/PowerBuilder/cleanExport'
		asFileReference files
		do: [ :aFile | 
			outputFile := ('/Users/larcheveque/Google Drive/Professionnel/INRIA/PowerBuilder/cleanExportWithoutComments/'
				, aFile basename) asFileReference.
			outputFile ensureDelete.
			outputFile
				writeStreamDo: [ :s | 
					stream := aFile readStream.
					s
						nextPutAll:
							(fileCleaner
								parse:
									(String
										streamContents: [ :str | 
											stream contents
												linesDo: [ :aLine | 
													str nextPutAll: ('//.*' asRegex copy: aLine replacingMatchesWith: '').
													str cr ] ])) ] ].
	'/Users/larcheveque/Google Drive/Professionnel/INRIA/PowerBuilder/cleanExportWithoutComments'
		asFileReference files
		collect: [ :aFile | 
			| result |
			stream := aFile readStream.
			stream encoder: ZnUTF8Encoder new.
			result := PWBAbstractParser parse: stream contents fileExtension: aFile extension.
			result isPetit2Failure
				ifTrue: [ result debugObject file: aFile ]
				ifFalse: [ result ] ]
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
	^ ('ref' token , blank) optional , type , blank , identifier
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
	^ blank , ($= parser / '+=' parser) , blank , expression
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
	^ 'yes' token / 'no' token
]

{ #category : #accessing }
PWBAbstractParser >> callStatement [
	^ ('call' token) , blank , variable , ($` parser , identifier) optional
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
	^ ('end ' token, aReservedWord token) 
]

{ #category : #accessing }
PWBAbstractParser >> eventType [
	^ self
		parserIgnoringCaseFor:
			#('ButtonClicked' 'ButtonClicking' 'Clicked' 'DoubleClicked' 'ItemChanged' 'ItemError' 'ItemFocusChanged' 'RButtonDown' 'RowFocusChanged' 'RowFocusChanging' 'create' 'destroy')
]

{ #category : #accessing }
PWBAbstractParser >> exitStatement [
	^ 'exit' token
]

{ #category : #accessing }
PWBAbstractParser >> expression [
	^ (expressionWithSign / operatorExpression / parenthesedExpression / expressionTerm), methodInvocation optional
]

{ #category : #accessing }
PWBAbstractParser >> expressionTerm [
	^ notExpression / functionInvocation / constant / array / createInstruction / number / string / variableOrType / booleanValue / defaultVariable
]

{ #category : #accessing }
PWBAbstractParser >> expressionWithSign [
	^ $+ parser / $- parser , expression
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
	^ uncheckedIdentifier, blank, functionArguments
]

{ #category : #accessing }
PWBAbstractParser >> identifier [
	self flag: #TODO.	"improve identifier to accept thisCustomer for example"
	^ ((reservedKeyword not , (#letter parser / $_ parser) , (#letter parser / $_ parser / #digit parser) star)
		/ (reservedKeyword , (#letter parser / $_ parser / #digit parser) plus)) flatten
]

{ #category : #accessing }
PWBAbstractParser >> ifMultiLine [
	^ 'if' token , blank , condition , blank , 'then' token , blank , statements
		, (blank , 'elseif' token , blank , expression , blank , 'then' token , blank , statements) star , (blank , 'else' token , blank , statements) optional , newlines
		, (self endOf: 'if')
]

{ #category : #accessing }
PWBAbstractParser >> ifSingleLine [
	^ 'if' token , blank , condition , blank , 'then' token , blank , statement
]

{ #category : #accessing }
PWBAbstractParser >> ifStatement [
	^ ifMultiLine / ifSingleLine
]

{ #category : #accessing }
PWBAbstractParser >> methodInvocation [
	^ $. parser, identifier, blank, functionArguments
]

{ #category : #accessing }
PWBAbstractParser >> newlines [
	^ (#blank parser star , #newline parser) plus, blank
]

{ #category : #accessing }
PWBAbstractParser >> notExpression [
	^ 'not' token , blank , expression
]

{ #category : #accessing }
PWBAbstractParser >> number [
	^ ($+ parser / $- parser , blank) optional , #digit parser plus
]

{ #category : #accessing }
PWBAbstractParser >> operatorExpression [
	^ parenthesedExpression / expressionTerm , methodInvocation optional , blank
		, (self parserFor: #('+' '-' '#' '^' '*' '/' '=' '<=' '>=' '>' '<>' '<' ',' 'AND' 'OR' 'and' 'or')) , blank , expression
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
PWBAbstractParser >> reservedKeyword [
	^ self parserIgnoringCaseFor: #('this' 'end' 'if' 'return' 'loop' 'while' 'elseif' 'else' 'do' 'exit' 'next' 'for' 'call' 'not')
]

{ #category : #accessing }
PWBAbstractParser >> returnStatement [
	^ 'return' token , (blank , expression) optional
]

{ #category : #accessing }
PWBAbstractParser >> specialStatement [
	^ returnStatement / exitStatement
]

{ #category : #accessing }
PWBAbstractParser >> start [
	^ (file , blank) end optimize
]

{ #category : #accessing }
PWBAbstractParser >> statement [
	^ specialStatement / assignationStatement / callStatement / ifStatement
		/ functionInvocation / variableIncrement / expression
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
PWBAbstractParser >> uncheckedIdentifier [
	^ (#letter parser / $_ parser) , (#letter parser / $_ parser / #digit parser) star
]

{ #category : #accessing }
PWBAbstractParser >> variable [
	^ 'this.' parser optional , identifier , $( parser not
		, ($. parser , identifier , $( parser not) star , '[]' parser optional
]

{ #category : #accessing }
PWBAbstractParser >> variableIncrement [
	^ variable , blank , '++' parser
]

{ #category : #accessing }
PWBAbstractParser >> variableOrType [
	"This rule is for case where we are not sure if it is a variable or a type, only the resolution will solve it so a custom type will be considered as a variable"

	^ parametrizedType / basicType / variable	
]
