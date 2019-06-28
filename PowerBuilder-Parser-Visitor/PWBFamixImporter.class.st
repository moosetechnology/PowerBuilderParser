Class {
	#name : #PWBFamixImporter,
	#superclass : #Object,
	#category : #'PowerBuilder-Parser-Visitor'
}

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
PWBFamixImporter class >> fillModelUsing: aLibrary fromFolder: aFolder [
	| debugObjects |
	debugObjects := OrderedCollection new.
	aFolder files
		reject: [ :aFile | #(pbg srj DS_Store) includes: aFile extension ]
		thenDo: [ :aFile | 
			| result |
			aFile size = 0
				ifFalse: [ result := PWBAbstractGrammar obtainASTFromFile: aFile.
					result isPetit2Failure
						ifTrue: [ debugObjects add: (result debugObject file: aFile) ]
						ifFalse: [ | visitor |
							visitor := PWBVisitorEntityCreator new.
							visitor
								model: aLibrary mooseModel;
								file: aFile;
								currentLibrary: aLibrary.
							result acceptVisitor: visitor.
							visitor := PWBVisitorReferenceCreator new.
							visitor
								model: aLibrary mooseModel;
								file: aFile.
							result acceptVisitor: visitor ] ] ].
				Halt now.
	^ debugObjects
]

{ #category : #'as yet unclassified' }
PWBFamixImporter class >> fillModelUsing: aLibrary visitor: visitor fromFolder: aFolder [
	| debugObjects |
	debugObjects := OrderedCollection new.
	(aFolder files
		reject: [ :aFile | #(pbg srj DS_Store) includes: aFile extension ])
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

{ #category : #'as yet unclassified' }
PWBFamixImporter class >> generationScripts [
	PPTASTGenerator
		generateEverythingFrom: PWBDataWindowGrammar
		generationStrategy: PPASTGeneratorStrategy pwbStrategy.
	PPTASTGenerator
		generateEverythingFrom: PWBQueryFileGrammar
		generationStrategy: PPASTGeneratorStrategy pwbUserObjectStrategy.
	PPTASTGenerator
		generateEverythingFrom: PWBCommonGrammar
		generationStrategy: PPASTGeneratorStrategy pwbUserObjectStrategy.
	#(fileExtension fileName)
		do: [ :aSelector | 
			PPASTGeneratorStrategy new
				createAttributeAndAccessorsFor: aSelector
				inClass: #PWBASTFile asClass ].
	PWBFamixModelGenerator generate
]

{ #category : #'as yet unclassified' }
PWBFamixImporter class >> importFromFolder: aFolder [
	| mooseModel library aFolderReference |
	mooseModel := MooseModel new.
	aFolderReference := aFolder asFileReference.
	mooseModel name: 'IzyProtectMooseModel'.
	mooseModel rootFolder: aFolderReference.
	aFolderReference directories
		do: [ :dir | 
			library := FamixPWBLibrary new.
			library
				name: dir basename;
				mooseModel: mooseModel.
			self createCleanFilesFrom: dir into: dir / 'cleaned'.
			(self fillModelUsing: library fromFolder: dir / 'cleaned')
				ifNotEmpty: [ :failures | "failures inspect.
			Halt now " ] ]
		displayingProgress: [ :dir | dir asString ].
	Halt now.
	^ mooseModel
]

{ #category : #'as yet unclassified' }
PWBFamixImporter class >> importInOnePassFromFolder: aFolder [
	| mooseModel library aFolderReference visitor |
	mooseModel := MooseModel new.
	aFolderReference := aFolder asFileReference.
	mooseModel name: 'IzyProtectMooseModel'.
	mooseModel rootFolder: aFolderReference.
	visitor := PWBEntityCreatorFutureReferenceSolverVisitor new.
	visitor model: mooseModel.
	aFolderReference directories
		do: [ :dir | 
			library := FamixPWBLibrary new.
			library
				name: dir basename;
				mooseModel: mooseModel.
			self createCleanFilesFrom: dir into: dir / 'cleaned'.
			(self
				fillModelUsing: library
				visitor: visitor
				fromFolder: dir / 'cleaned')
				ifNotEmpty: [ :failures | "failures inspect.
			Halt now " ] ]
		displayingProgress: [ :dir | dir asString ].
	visitor resolveUnresolvedReferences.
	^ mooseModel
]
