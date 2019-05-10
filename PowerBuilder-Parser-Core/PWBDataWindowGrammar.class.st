"
I am a parser to parse .srd powerbuilder files (Data Window files) 
"
Class {
	#name : #PWBDataWindowGrammar,
	#superclass : #PWBAbstractGrammar,
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
		'generatorToken',
		'generator',
		'import',
		'export',
		'formatType',
		'dataWindowFile'
	],
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #parsing }
PWBDataWindowGrammar class >> supportedExtensions [
	^ {'srd'}
]

{ #category : #'as yet unclassified' }
PWBDataWindowGrammar >> column [
	^ 'column' parser , $= parser , columnDefinition
]

{ #category : #'as yet unclassified' }
PWBDataWindowGrammar >> columnDefinition [
	^ $( parser , options trim , $) parser
]

{ #category : #'as yet unclassified' }
PWBDataWindowGrammar >> dataWindow [
	^ 'datawindow' parser, parameters
]

{ #category : #accessing }
PWBDataWindowGrammar >> dataWindowFile [
	<reify: #(graphicComponent / dataWindow / table / generator / import / export) into: #fileStatement>
	^ (graphicComponent / dataWindow / table / generator / import / export separatedBy: blank) , blank
]

{ #category : #'as yet unclassified' }
PWBDataWindowGrammar >> export [
	^ 'export.' parser, formatType, parameters
]

{ #category : #accessing }
PWBDataWindowGrammar >> file [
	<rename: #dataWindowFile into: #content>
	^ dataWindowFile
]

{ #category : #'as yet unclassified' }
PWBDataWindowGrammar >> formatType [
	^ self parserFor: #('xml' 'pdf' 'xhtml')
]

{ #category : #'as yet unclassified' }
PWBDataWindowGrammar >> generator [
	^ generatorToken, parameters
]

{ #category : #'as yet unclassified' }
PWBDataWindowGrammar >> generatorToken [
	^ self
		parserFor: #('htmlgen' 'xhtmlgen' 'cssgen' 'xmlgen' 'xsltgen' 'jsgen')
]

{ #category : #'as yet unclassified' }
PWBDataWindowGrammar >> graphicComponent [
	^ graphicComponentToken, parameters
]

{ #category : #'as yet unclassified' }
PWBDataWindowGrammar >> graphicComponentToken [
	^ self
		parserFor:
			#('detail' 'footer' 'header' 'summary' 'rectangle' 'text' 'column' 'compute' 'htmltable' 'line' 'ellipse' 'group')
]

{ #category : #'as yet unclassified' }
PWBDataWindowGrammar >> import [
	^ 'import.' parser, formatType, parameters
]

{ #category : #'as yet unclassified' }
PWBDataWindowGrammar >> option [
	^ access, $= parser trim, optionValue
]

{ #category : #'as yet unclassified' }
PWBDataWindowGrammar >> optionValue [
	^ expression
]

{ #category : #'as yet unclassified' }
PWBDataWindowGrammar >> options [
	^ option separatedBy: blank optional
]

{ #category : #'as yet unclassified' }
PWBDataWindowGrammar >> parameters [
	^ $( parser, options trim optional, $) parser
]

{ #category : #'as yet unclassified' }
PWBDataWindowGrammar >> table [
	^ 'table' parser , $( parser , (column separatedBy: blank) , blank , options optional
		, blank , $) parser
]
