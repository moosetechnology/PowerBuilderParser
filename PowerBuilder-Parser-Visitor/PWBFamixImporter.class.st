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
			| outputFile stream keep |
			outputFile := (anotherFolder / aFile basename) asFileReference.
			outputFile ensureDelete.
			aFile extension = 'srf'
				ifTrue: [ self cleanAndParseSrfFile: aFile into: outputFile ]
				ifFalse: [ keep := false.
					stream := aFile readStream.
					"	stream encoder: ZnUTF16Encoder new."
					[ keep ]
						whileFalse: [ keep := (stream nextLine beginsWith: '$') not ].
					outputFile
						writeStreamDo: [ :ws | ws nextPutAll: (PWBPreprocessor parse: stream upToEnd) ] ] ]
]

{ #category : #'as yet unclassified' }
PWBFamixImporter class >> fillModel: mooseModel fromFolder: aFolder [
	| debugObjects |
	self flag: #START.
	debugObjects := OrderedCollection new.
	aFolder files
		do: [ :aFile | 
			| result |
			(#('pbg' 'srs') includes: aFile extension)
				ifFalse: [ result := PWBAbstractGrammar obtainASTFromFile: aFile.
					1 halt.
					result isPetit2Failure
						ifTrue: [ debugObjects add: (result debugObject file: aFile) ]
						ifFalse: [ | visitor |
							visitor := PWBVisitorEntityCreator new.
							visitor model: mooseModel.
							result acceptVisitor: visitor.
							visitor := PWBVisitorReferenceCreator new.
							visitor model: mooseModel.
							result acceptVisitor: visitor ] ] ].
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
	self
		fillModel: mooseModel
		fromFolder: fileReferenceFolder / 'cleaned'.
	^ mooseModel
]
