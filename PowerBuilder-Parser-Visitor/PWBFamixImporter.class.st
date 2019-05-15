Class {
	#name : #PWBFamixImporter,
	#superclass : #Object,
	#category : #'PowerBuilder-Parser-Visitor'
}

{ #category : #'as yet unclassified' }
PWBFamixImporter class >> cleanAndParseSrfFile: aFile into: outputFile [
	| keep stream |
	keep := 1.
	stream := aFile readStream.
	"stream encoder: ZnUTF16Encoder new."
	[ keep = 3 ]
		whileFalse: [ stream nextLine.
			keep := keep + 1 ].
	^ outputFile
		writeStreamDo: [ :ws | ws nextPutAll: (PWBPreprocessor parse: stream upToEnd) ]
]

{ #category : #'as yet unclassified' }
PWBFamixImporter class >> createCleanFilesFrom: aFolder into: anotherFolder [
	anotherFolder ensureCreateDirectory.
	aFolder visibleFiles
		do: [ :aFile | 
			| outputFile stream |
			outputFile := (anotherFolder / aFile basename) asFileReference.
			outputFile ensureDelete.
			stream := aFile readStream.
			"stream encoder: ZnUTF16Encoder new."
			outputFile
				writeStreamDo: [ :ws | ws nextPutAll: (PWBPreprocessor parse: stream upToEnd) ] ]
]

{ #category : #'as yet unclassified' }
PWBFamixImporter class >> fillModel: mooseModel fromFolder: aFolder [
	| debugObjects |
	self flag: #START.
	debugObjects := OrderedCollection new.
	aFolder files
		reject: [ :aFile | #(pbg srj) includes: aFile extension ]
		thenDo: [ :aFile | 
			| result |
			result := PWBAbstractGrammar obtainASTFromFile: aFile.
			result isPetit2Failure
				ifTrue: [ debugObjects add: (result debugObject file: aFile) ]
				ifFalse: [ | visitor |
					visitor := PWBVisitorEntityCreator new.
					visitor model: mooseModel.
					result acceptVisitor: visitor.
					visitor := PWBVisitorReferenceCreator new.
					visitor model: mooseModel.
					result acceptVisitor: visitor ] ].
	^ debugObjects
]

{ #category : #'as yet unclassified' }
PWBFamixImporter class >> importFromFolder: aFolder [
	| mooseModel fileReferenceFolder |
	self flag: #START.
	fileReferenceFolder := aFolder asFileReference.
	self
		createCleanFilesFrom: fileReferenceFolder
		into: fileReferenceFolder / 'cleaned'.
	mooseModel := MooseModel new.
	(self
		fillModel: mooseModel
		fromFolder: fileReferenceFolder / 'cleaned')
		ifNotEmpty: [ :failures | 
			failures inspect.
			Halt now ].
	^ mooseModel
]

{ #category : #'as yet unclassified' }
PWBFamixImporter class >> importFromFolder: aFolder mooseModel: aMooseModel [
	| fileReferenceFolder |
	self flag: #START.
	fileReferenceFolder := aFolder asFileReference.
	self
		createCleanFilesFrom: fileReferenceFolder
		into: fileReferenceFolder / 'cleaned'.
	self
		fillModel: aMooseModel
		fromFolder: fileReferenceFolder / 'cleaned'.
	"ifNotEmpty: [ :failures | 
			failures inspect.
			Halt now ]"
	^ aMooseModel
]

{ #category : #'as yet unclassified' }
PWBFamixImporter class >> script [
	| mooseModel |
	mooseModel := MooseModel new.
	'/Users/honore/Documents/Pharo/images/Homework20032019/IzyProectObjectCIM'
		asFileReference directories
		do: [ :dir | 
			mooseModel := PWBFamixImporter
				importFromFolder: dir
				mooseModel: mooseModel ]
		displayingProgress: [ :dir | dir asString ]
]
