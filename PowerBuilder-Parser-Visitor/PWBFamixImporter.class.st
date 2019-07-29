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
PWBFamixImporter class >> grammarGenerationScripts [
	<script>
	PPTASTGenerator
		generateEverythingFrom: PWBDataWindowGrammar
		generationStrategy: PPTASTGeneratorStrategy pwbStrategy.
	PPTASTGenerator
		generateEverythingFrom: PWBQueryFileGrammar
		generationStrategy: PPTASTGeneratorStrategy pwbUserObjectStrategy.
	PPTASTGenerator
		generateEverythingFrom: PWBCommonGrammar
		generationStrategy: PPTASTGeneratorStrategy pwbUserObjectStrategy.
	#(fileExtension fileName)
		do: [ :aSelector | 
			PPTASTGeneratorStrategy new
				createAttributeAndAccessorsFor: aSelector
				inClass: #PWBASTFile asClass ].
]

{ #category : #'as yet unclassified' }
PWBFamixImporter class >> importFromFolder: aFolder [
	^ self importInOnePassFromFolder: aFolder
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
