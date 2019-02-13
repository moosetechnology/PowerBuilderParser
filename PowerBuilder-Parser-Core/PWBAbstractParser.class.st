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
		'arrayWithSize'
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

	| outputFile keep stream |
	'/Users/larcheveque/Google Drive/Professionnel/INRIA/PowerBuilder/export'
		asFileReference files
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
	'/Users/larcheveque/Google Drive/Professionnel/INRIA/PowerBuilder/cleanExport'
		asFileReference files
		do: [ :aFile | 
			outputFile := ('/Users/larcheveque/Google Drive/Professionnel/INRIA/PowerBuilder/cleanExportWithoutComments/'
				, aFile basename) asFileReference.
			outputFile ensureDelete.
			outputFile
				writeStreamDo: [ :s | 
					stream := aFile readStream.
					s nextPutAll: (PWBPreprocessor parse: stream contents) ] ].
	'/Users/larcheveque/Google Drive/Professionnel/INRIA/PowerBuilder/cleanExportWithoutComments'
		asFileReference files
		collect: [ :aFile | 
			| result |
			stream := aFile readStream.
			stream encoder: ZnUTF8Encoder new.
			result := PWBAbstractParser
				parse: stream contents
				fileExtension: aFile extension.
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
PWBAbstractParser >> access [
	^ variable , arrayPosition optional , attributeAccess star
]

{ #category : #accessing }
PWBAbstractParser >> accessOrType [
	"This rule is for case where we are not sure if it is a variable or a type, only the resolution will solve it so a custom type will be considered as a variable"

	^ parametrizedType / basicType / access	
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
PWBAbstractParser >> arrayPosition [
	^ '[' parser , expression, ']' parser
]

{ #category : #accessing }
PWBAbstractParser >> arrayWithSize [
	^ $[ parser , (number separatedBy: $, parser) optional , $] parser
]

{ #category : #accessing }
PWBAbstractParser >> assignation [
	^ blank , ($= parser / '+=' parser / '-=' parser) , blank
		, expression
]

{ #category : #accessing }
PWBAbstractParser >> assignationStatement [
	^ access , assignation 
]

{ #category : #accessing }
PWBAbstractParser >> attributeAccess [
	^ $. parser , uncheckedIdentifier , $( parser not
		, arrayPosition optional
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
	^ 'call' token , blank , (variable / defaultVariable)
		, ($` parser , identifier) optional , '::' parser trim , eventType
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
	^ 'create' token, blank, variable
]

{ #category : #accessing }
PWBAbstractParser >> customType [
	^ identifier
]

{ #category : #accessing }
PWBAbstractParser >> defaultEventType [
	^ self
		parserIgnoringCaseFor:
			#('ButtonClicked' 'ButtonClicking' 'Clicked' 'DoubleClicked' 'ItemChanged' 'ItemError' 'ItemFocusChanged' 'RButtonDown' 'RowFocusChanged' 'RowFocusChanging' 'create' 'destroy')
]

{ #category : #accessing }
PWBAbstractParser >> defaultVariable [
	^ self parserIgnoringCaseFor: #('this' 'super')
]

{ #category : #accessing }
PWBAbstractParser >> endOf: aReservedWord [
	"It seems that a / can finish anything"
	^ ('end ' token, aReservedWord token) 
]

{ #category : #accessing }
PWBAbstractParser >> eventType [
	^ defaultEventType / identifier
]

{ #category : #accessing }
PWBAbstractParser >> exitStatement [
	^ 'exit' token
]

{ #category : #accessing }
PWBAbstractParser >> expression [
	^ (expressionWithSign / operatorExpression / parenthesedExpression / expressionTerm), methodInvocation star
]

{ #category : #accessing }
PWBAbstractParser >> expressionTerm [
	^ notExpression / functionInvocation / constant / array / createInstruction / number / string / accessOrType / booleanValue / defaultVariable
]

{ #category : #accessing }
PWBAbstractParser >> expressionWithSign [
	^ $+ parser / $- parser , spaces optional, expression
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
	self flag: #TODO.	"improve identifier to accept thisCustomer for example"
	^ ((reservedKeyword not , (#letter parser / $_ parser) , (#letter parser / $_ parser / #digit parser) star)
		/ (reservedKeyword , (#letter parser / $_ parser / #digit parser) plus)) flatten
]

{ #category : #accessing }
PWBAbstractParser >> ifMultiLine [
	^ 'if' token , blank , condition , blank , 'then' token , newlines
		, statements optional
		,
			(blank optional, 'elseif' token , blank , expression , blank , 'then' token
				, blank , statements optional) star
		, (blank optional, 'else' token , blank , statements optional) optional
		, newlines optional , (self endOf: 'if')
]

{ #category : #accessing }
PWBAbstractParser >> ifSingleLine [
	^ 'if' token , spaces , condition , spaces , 'then' token , spaces
		, statement , (spaces, 'else' token , spaces , statement) optional
]

{ #category : #accessing }
PWBAbstractParser >> ifStatement [
	^ ifMultiLine / ifSingleLine
]

{ #category : #accessing }
PWBAbstractParser >> methodInvocation [
	^ $. parser , uncheckedIdentifier , blank , functionArguments
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
		, ($. parser , #digit parser plus) optional
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
PWBAbstractParser >> postFixOperator [
	^ access , blank , ('--' parser / '++' parser)
]

{ #category : #accessing }
PWBAbstractParser >> reservedKeyword [
	^ self
		parserIgnoringCaseFor:
			#('this' 'end' 'if' 'return' 'loop' 'while' 'elseif' 'else' 'do' 'exit' 'next' 'for' 'call' 'not' 'case' 'try' 'catch' 'super')
]

{ #category : #accessing }
PWBAbstractParser >> returnStatement [
	^ 'return' token , (spaces , expression) optional
]

{ #category : #accessing }
PWBAbstractParser >> spaces [
	^ (Character space parser / Character tab parser) star
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
		/ functionInvocation / postFixOperator / expression
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
	^ 'this.' token optional , identifier , $( parser not
		, arrayWithSize optional
]

{ #category : #accessing }
PWBAbstractParser >> variableOrType [
	"This rule is for case where we are not sure if it is a variable or a type, only the resolution will solve it so a custom type will be considered as a variable"

	^ parametrizedType / basicType / access	
]
