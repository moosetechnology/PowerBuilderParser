"
I am a parser to parse .srd powerbuilder files (Data Window files) 
"
Class {
	#name : #PWBDataWindowParser,
	#superclass : #PWBAbstractParser,
	#instVars : [
		'dataWindow',
		'parameters',
		'graphicComponent',
		'graphicComponentToken',
		'options',
		'option',
		'optionValue',
		'column',
		'columnDefinition',
		'table',
		'optionBad',
		'generatorToken',
		'generator',
		'import',
		'export',
		'formatType'
	],
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #parsing }
PWBDataWindowParser class >> supportedExtensions [
	^ {'srd'}
]

{ #category : #'as yet unclassified' }
PWBDataWindowParser >> column [
	^ 'column' parser , $= parser , columnDefinition
]

{ #category : #'as yet unclassified' }
PWBDataWindowParser >> columnDefinition [
	^ $( parser , options trim , $) parser
]

{ #category : #'as yet unclassified' }
PWBDataWindowParser >> dataWindow [
	^ 'datawindow' parser, parameters
]

{ #category : #'as yet unclassified' }
PWBDataWindowParser >> export [
	^ 'export.' parser, formatType, parameters
]

{ #category : #accessing }
PWBDataWindowParser >> file [
	^ (graphicComponent / dataWindow / table / generator / import / export separatedBy: blank) , blank
]

{ #category : #'as yet unclassified' }
PWBDataWindowParser >> formatType [
	^ (#('xml' 'pdf' 'xhtml') collect: #parser)
		reduce: [ :a :b | a / b ]
]

{ #category : #'as yet unclassified' }
PWBDataWindowParser >> generator [
	^ generatorToken, parameters
]

{ #category : #'as yet unclassified' }
PWBDataWindowParser >> generatorToken [
	^ (#('htmlgen' 'xhtmlgen' 'cssgen' 'xmlgen' 'xsltgen' 'jsgen') collect: #parser) reduce: [ :a :b | a / b ]
]

{ #category : #'as yet unclassified' }
PWBDataWindowParser >> graphicComponent [
	^ graphicComponentToken, parameters
]

{ #category : #'as yet unclassified' }
PWBDataWindowParser >> graphicComponentToken [
	^ (#('detail' 'footer' 'header' 'summary' 'rectangle' 'text' 'column' 'compute' 'htmltable' 'line') collect: #parser)
		reduce: [ :a :b | a / b ]
]

{ #category : #'as yet unclassified' }
PWBDataWindowParser >> import [
	^ 'import.' parser, formatType, parameters
]

{ #category : #'as yet unclassified' }
PWBDataWindowParser >> option [
	^ variable, $= parser trim, optionValue
]

{ #category : #'as yet unclassified' }
PWBDataWindowParser >> optionBad [
	^ #blank parser negate plus
]

{ #category : #'as yet unclassified' }
PWBDataWindowParser >> optionValue [
	^ expression
]

{ #category : #'as yet unclassified' }
PWBDataWindowParser >> options [
	^ option separatedBy: blank optional
]

{ #category : #'as yet unclassified' }
PWBDataWindowParser >> parameters [
	^ $( parser, options trim optional, $) parser
]

{ #category : #'as yet unclassified' }
PWBDataWindowParser >> table [
	^ 'table' parser , $( parser , (column separatedBy: blank) , blank , options optional
		, blank , $) parser
]
