Class {
	#name : #PWBPreprocessor,
	#superclass : #PP2CompositeNode,
	#instVars : [
		'comment',
		'code',
		'espeletteNewline',
		'string',
		'multiLineComment',
		'singleLineComment',
		'exportInformations',
		'releaseNumber',
		'header',
		'content'
	],
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #accessing }
PWBPreprocessor >> code [
	^ (string / comment / espeletteNewline) negate plus flatten
]

{ #category : #accessing }
PWBPreprocessor >> comment [
  ^multiLineComment / singleLineComment ==> [:p |  ' ' ]
]

{ #category : #accessing }
PWBPreprocessor >> content [
	^ (string / comment / espeletteNewline / code) star end
		==> [ :production | 
			String
				streamContents: [ :stream | production do: [ :text | stream nextPutAll: text ] ] ]
]

{ #category : #accessing }
PWBPreprocessor >> espeletteNewline [
	^ ($& parser , (Character space parser / Character tab parser) star
		, #newline parser) ==> [ :p | '' ]
]

{ #category : #accessing }
PWBPreprocessor >> exportInformations [
	^ $$ parser, #newline parser negate plus
]

{ #category : #accessing }
PWBPreprocessor >> header [
	^ (exportInformations separatedBy: #newline parser)
		, (#newline parser , releaseNumber) optional , #newline parser
]

{ #category : #accessing }
PWBPreprocessor >> multiLineComment [
	^ '/*' parser , (multiLineComment / '*/' parser negate) star
		, '*/' parser
]

{ #category : #accessing }
PWBPreprocessor >> releaseNumber [
	^ 'release' parser, #digit parser plus trim, $; parser
]

{ #category : #accessing }
PWBPreprocessor >> singleLineComment [
	^ '//' parser , #newline parser negate star
]

{ #category : #accessing }
PWBPreprocessor >> start [
	^ (header optional , content) ==> [ :p | p second ]
]

{ #category : #accessing }
PWBPreprocessor >> string [
	^ PWBAbstractGrammar basicNew string flatten
]
