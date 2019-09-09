Class {
	#name : #PWBFamixImporter,
	#superclass : #MooseAbstractImporter,
	#instVars : [
		'folder'
	],
	#category : #'PowerBuilder-Parser-Visitor'
}

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
				inClass: #PWBASTFile asClass ]
]

{ #category : #'as yet unclassified' }
PWBFamixImporter class >> importFromFolder: aFolder [
	^ self new importInOnePassFromFolder: aFolder
]

{ #category : #'as yet unclassified' }
PWBFamixImporter >> createCleanFilesFrom: aFolder into: anotherFolder [
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
PWBFamixImporter >> defaultImportingContext [
	^ FamixPWBImportingContext new importMaximum
]

{ #category : #'as yet unclassified' }
PWBFamixImporter >> fillModelUsing: aLibrary visitor: visitor fromFolder: aFolder [
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

{ #category : #accessing }
PWBFamixImporter >> folder [
	^ folder
]

{ #category : #accessing }
PWBFamixImporter >> folder: anObject [
	folder := anObject asFileReference.
	self targetModel rootFolder: folder.
]

{ #category : #'as yet unclassified' }
PWBFamixImporter >> importInOnePass [
	| library visitor |
	visitor := PWBEntityCreatorFutureReferenceSolverVisitor new.
	visitor model: self targetModel.
	visitor importingContext: self importingContext.
	folder directories
		do: [ :dir | 
			library := FamixPWBLibrary new.
			library
				name: dir basename;
				mooseModel: self targetModel.
			self createCleanFilesFrom: dir into: dir / 'cleaned'.
			(self
				fillModelUsing: library
				visitor: visitor
				fromFolder: dir / 'cleaned')
				ifNotEmpty: [ :failures | "failures inspect.
			Halt now " ] ]
		displayingProgress: [ :dir | dir asString ].
	visitor resolveUnresolvedReferences.
	^ self targetModel
]

{ #category : #'as yet unclassified' }
PWBFamixImporter >> importInOnePassFromFolder: aFolder [
	self folder: aFolder.
	self importInOnePass.
	^ self targetModel
]
