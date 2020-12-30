Class {
	#name : #PWBSimpleImporter,
	#superclass : #MooseAbstractImporter,
	#instVars : [
		'preprocessedMap',
		'visitor',
		'folder'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #'as yet unclassified' }
PWBSimpleImporter class >> importFromFolder: aFolder [
	^ self new
		folder: aFolder ;
		run
]

{ #category : #private }
PWBSimpleImporter >> basicRun [
	| library |
	folder directories
		do: [ :dir | 
			library := FamixPWBLibrary new.
			library
				name: dir basename;
				mooseModel: self targetModel.
			self cleanFilesFromFolder: dir toTemp: dir / 'cleaned'.
			visitor preprocessingMap: preprocessedMap.
			(self fillModelUsing: library fromFolder: dir / 'cleaned')
				ifNotEmpty: [ :failures | 
					failures inspect.
					Halt now ].
			self increment ].
	^ visitor
]

{ #category : #private }
PWBSimpleImporter >> cleanFilesFromFolder: aFolder toTemp: anotherFolder [
	anotherFolder ensureCreateDirectory.
	"preprocessedMap := Dictionary new: aFolder visibleFiles size."
	aFolder visibleFiles
		do: [ :aFile | 
			| parser outputFile stream |
			outputFile := (anotherFolder / aFile basename) asFileReference.
			outputFile ensureDelete.
			stream := aFile readStream.
			"stream encoder: ZnUTF16Encoder new."
			parser := PWBPreprocessor new.
			outputFile
				writeStreamDo: [ :ws | ws nextPutAll: (parser parse: stream upToEnd) ].
			preprocessedMap
				at: outputFile fullName
				put: parser characterIgnored ]
]

{ #category : #accessing }
PWBSimpleImporter >> fileToSkipForNow [
	self flag: 'To be remove'.
	^ #("'uo_correpondant_pop.sru' 'u_web_browser.sru' 'w_affichage_site_externe.srw' 'dw_org.srd'" 'cwm.sra')
]

{ #category : #private }
PWBSimpleImporter >> fillModelUsing: aLibrary fromFolder: aFolder [
	| debugObjects |
	debugObjects := OrderedCollection new.
	(aFolder files
		reject: [ :aFile | 
			(#(pbg srj DS_Store) includes: aFile extension)
				or: (self fileToSkipForNow includes: aFile basename) ])
		do: [ :aFile | 
			| result |
			aFile size = 0
				ifFalse: [ result := PWBAbstractGrammar obtainASTFromFile: aFile.
					result isPetit2Failure
						ifTrue: [ debugObjects add: (result debugObject file: aFile) ]
						ifFalse: [ visitor
								file: aFile;
								currentLibrary: aLibrary.
							result acceptVisitor: visitor ] ] ]
		displayingProgress: [ :aFile | aFile asString ].
	^ debugObjects
]

{ #category : #accessing }
PWBSimpleImporter >> folder [
	^ folder
]

{ #category : #accessing }
PWBSimpleImporter >> folder: anObject [
	folder := anObject asFileReference.
	self targetModel rootFolder: folder.
]

{ #category : #accessing }
PWBSimpleImporter >> length [ 
	^folder directories size
]

{ #category : #accessing }
PWBSimpleImporter >> preprocessedMap [
	^ preprocessedMap
]

{ #category : #private }
PWBSimpleImporter >> setUp [
	preprocessedMap := Dictionary new.
]

{ #category : #private }
PWBSimpleImporter >> tearDown [
	folder asFileReference allDirectories
		select: [ :dir | dir basename = 'cleaned' ]
		thenDo: #deleteAll
]
