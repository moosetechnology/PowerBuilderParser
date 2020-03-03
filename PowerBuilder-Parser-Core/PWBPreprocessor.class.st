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
		'content',
		'characterIgnored'
	],
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #accessing }
PWBPreprocessor class >> ignoredNames [
	^ super ignoredNames , { #characterIgnored }
]

{ #category : #accessing }
PWBPreprocessor >> characterIgnored [
	^characterIgnored
]

{ #category : #accessing }
PWBPreprocessor >> characterIgnored: anInt [
	characterIgnored := anInt
]

{ #category : #accessing }
PWBPreprocessor >> code [
	^ (string / comment / espeletteNewline) negate plus flatten
]

{ #category : #accessing }
PWBPreprocessor >> comment [
	^ (multiLineComment / singleLineComment) flatten
		==> [ :p | self replaceNonWhiteCharacters: p ]
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
		, #newline parser) flatten
		==> [ :p | self replaceNonSpaceCharacters: p ]
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
PWBPreprocessor >> replaceNonSpaceCharacters: aString [
	| aStream |
	aStream := String new: aString size.
	1 to: aString size do: [ :i || c|
		c := aString at: i.
		aStream at: i put:
			(c isSpaceSeparator 
				ifTrue: [ c ]
				ifFalse: [ Character space ])
			].
	^ aStream
]

{ #category : #accessing }
PWBPreprocessor >> replaceNonWhiteCharacters: aString [
	| aStream |
	aStream := String new: aString size.
	1 to: aString size do: [ :i || c|
		c := aString at: i.
		aStream at: i put:
			(c isSeparator 
				ifTrue: [ c ]
				ifFalse: [ Character space ])
			].
	^ aStream
]

{ #category : #accessing }
PWBPreprocessor >> singleLineComment [
	^ '//' parser , #newline parser negate star
]

{ #category : #accessing }
PWBPreprocessor >> start [
	^ (header optional flatten , content) ==> [ :p |
			self characterIgnored: p first size.
			p second ]
]

{ #category : #accessing }
PWBPreprocessor >> string [
	^ PWBAbstractGrammar basicNew string flatten
]
