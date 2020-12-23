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
		'characterIgnored',
		'binaryDataSection'
	],
	#category : #'PowerBuilder-Parser-Core'
}

{ #category : #accessing }
PWBPreprocessor >> binaryDataSection [
	"binaryDataSection should be at the end of the file"
	^ 'Start of PowerBuilder Binary Data Section' parser , #any parser  plus
		==> [ :p | '' ]
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
	^ (string / comment / espeletteNewline / binaryDataSection) negate plus flatten
]

{ #category : #accessing }
PWBPreprocessor >> comment [
	^ (multiLineComment / singleLineComment) flatten
		==> [ :p | self replaceNonWhiteCharacters: p ]
]

{ #category : #accessing }
PWBPreprocessor >> content [
	^ (string / comment / espeletteNewline / code) star , binaryDataSection optional end
		==> [ :production | 
			String
				streamContents: [ :stream | production first do: [ :text | stream nextPutAll: text ] ] ]
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
		, (#newline parser plus , releaseNumber) optional , #newline parser
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
	"remove the header of the file but keep its size so that positions in the cleaned file can be corrected to match those in the original file"
	^ (header optional flatten , content) ==> [ :p |
			self characterIgnored: p first size.
			p second ]
]

{ #category : #accessing }
PWBPreprocessor >> string [
	^ PWBAbstractGrammar basicNew string flatten
]
