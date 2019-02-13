Class {
	#name : #PWBPreprocessor,
	#superclass : #PP2CompositeNode,
	#instVars : [
		'comment',
		'code',
		'espeletteNewline',
		'string',
		'multiLineComment',
		'singleLineComment'
	],
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #accessing }
PWBPreprocessor >> code [
	^ (string / comment / espeletteNewline) negate plus flatten
]

{ #category : #accessing }
PWBPreprocessor >> comment [
	^ multiLineComment
		/ singleLineComment ==> [ :p | '' ]
]

{ #category : #accessing }
PWBPreprocessor >> espeletteNewline [
	^ ($& parser , (Character space parser / Character tab parser) star
		, #newline parser) ==> [ :p | '' ]
]

{ #category : #accessing }
PWBPreprocessor >> multiLineComment [
	^ '/*' parser , (multiLineComment / '*/' parser negate) plus
		, '*/' parser
]

{ #category : #accessing }
PWBPreprocessor >> singleLineComment [
	^ '//' parser , #newline parser negate star
]

{ #category : #accessing }
PWBPreprocessor >> start [
	^ (string / comment / espeletteNewline / code) plus end
		==> [ :production | 
			String
				streamContents: [ :stream | production do: [ :text | stream nextPutAll: text ] ] ]
]

{ #category : #accessing }
PWBPreprocessor >> string [
	^ PWBAbstractParser basicNew string flatten
]
