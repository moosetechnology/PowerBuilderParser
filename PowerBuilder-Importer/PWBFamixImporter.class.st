"
A class to manage importation of PowerBuilder source code

It:
- creates a references solver
- creates a model
- creates an importing context
- search for PowerBuilder files in a directory
- preprocess PowerBuilder code to remove comments and join lines
- parse the files to get at AST
- visit the AST to populate the model
- resolves names after parsing

"
Class {
	#name : #PWBFamixImporter,
	#superclass : #MooseAbstractImporter,
	#instVars : [
		'folder',
		'preprocessedMap',
		'visitor'
	],
	#category : #'PowerBuilder-Importer-Importers'
}

{ #category : #'as yet unclassified' }
PWBFamixImporter class >> astTestGenerationScript [
	<script>
	PPTASTCheckingTestGenerator new
		generateAllTestsFor: PWBDataWindowParser
		inPackage: 'PowerBuilder-Parser-Tests'
		fromTestClass: PWBDataWindowGrammarTest.
	PPTASTCheckingTestGenerator new
		generateAllTestsFor: PWBCommonParser
		inPackage: 'PowerBuilder-Parser-Tests'
		fromTestClass: PWBUserObjectGrammarTest
]

{ #category : #'as yet unclassified' }
PWBFamixImporter class >> createModelFor: aFile [
	^ self new createModelFor: aFile
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
				inClass: #PWBASTFile asClass ]
]

{ #category : #'as yet unclassified' }
PWBFamixImporter class >> importFromFolder: aFolder [
	^ self new
		folder: aFolder ;
		run
]

{ #category : #'as yet unclassified' }
PWBFamixImporter class >> updateData: aBuilder [
	<worldMenu>
	(aBuilder item: #CreatePWBModel)
		parent: #PWBTools;
		help: 'Create a Powerbuilder model from source code';
		label: 'CreatePWBModel';
		action: [ | folder |
			folder := UITheme builder
				chooseDirectory: 'Choose Powerbuilder parent/libraryListe source files folder'.
			folder
				ifNotNil: [ (self importFromFolder: folder)
						name: folder basename;
						install ] ]
]

{ #category : #private }
PWBFamixImporter >> basicRun [
	| library |
	folder directories
		do: [ :dir | 
			library := FamixPWBLibrary new.
			library
				name: dir basename;
				mooseModel: self targetModel.
			self cleanFilesFromFolder: dir toTemp: dir / 'cleaned'.
			visitor preprocessingMap: preprocessedMap.
			(self
				fillModelUsing: library
				fromFolder: dir / 'cleaned')
				ifNotEmpty: [ :failures | failures inspect ].
			self increment ].
	visitor resolveUnresolvedReferences.
	^ self targetModel
]

{ #category : #running }
PWBFamixImporter >> cleanFilesFromFolder: aFolder toTemp: anotherFolder [
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

{ #category : #running }
PWBFamixImporter >> createModelFor: aFile [
	| library visitor model parser cleanFileContents result |
	visitor := PWBEntityCreatorFutureReferenceSolverVisitor new.
	visitor importingContext: self importingContext.
	parser := PWBPreprocessor new.
	model := FamixPWBModel new.
	library := FamixPWBLibrary new
		name: '';
		mooseModel: model;
		yourself.
	cleanFileContents := parser parse: aFile contents.
	preprocessedMap := OrderedDictionary new.
	preprocessedMap at: aFile fullName put: parser characterIgnored.
	visitor
		file: aFile;
		preprocessingMap: self preprocessedMap;
		model: model.
	visitor currentLibrary: library.
	result := PWBAbstractGrammar
		obtainASTFrom: cleanFileContents
		fileExtension: aFile extension.
	result
		fileName: aFile base;
		fileExtension: aFile extension.
	result acceptVisitor: visitor.
	visitor resolveUnresolvedReferences.
	^ model
]

{ #category : #accessing }
PWBFamixImporter >> defaultImportingContext [
	^ FamixPWBImportingContext new importMaximum
]

{ #category : #accessing }
PWBFamixImporter >> description [ 
	^('Importing <1p> directories from ' , self folder) 
		expandMacrosWith: self length

]

{ #category : #'initialize-release' }
PWBFamixImporter >> fileToSkipForNow [
	self flag: 'To be remove'.
	^ #("'uo_correpondant_pop.sru' 'u_web_browser.sru' 'w_affichage_site_externe.srw' 'dw_org.srd'" 'cwm.sra')
]

{ #category : #running }
PWBFamixImporter >> fillModelUsing: aLibrary fromFolder: aFolder [
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
PWBFamixImporter >> folder [
	^ folder
]

{ #category : #accessing }
PWBFamixImporter >> folder: anObject [
	folder := anObject asFileReference.
	self targetModel rootFolder: folder.
]

{ #category : #'initialize-release' }
PWBFamixImporter >> initialize [
  super initialize.
  targetModel := FamixPWBModel new.
  importingContext := self defaultImportingContext
]

{ #category : #accessing }
PWBFamixImporter >> length [ 
	^folder directories size
]

{ #category : #accessing }
PWBFamixImporter >> preprocessedMap [
	^ preprocessedMap
]

{ #category : #private }
PWBFamixImporter >> setUp [
	preprocessedMap := Dictionary new.
	visitor := PWBEntityCreatorFutureReferenceSolverVisitor new.
	visitor model: self targetModel.
	visitor importingContext: self importingContext.
]

{ #category : #private }
PWBFamixImporter >> tearDown [
	folder asFileReference allDirectories
		select: [ :dir | dir basename = 'cleaned' ]
		thenDo: #deleteAll
]
