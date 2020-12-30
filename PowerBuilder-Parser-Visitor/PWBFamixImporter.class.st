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
	#superclass : #PWBSimpleImporter,
	#category : #'PowerBuilder-Parser-Visitor'
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
	super basicRun.
	visitor resolveUnresolvedReferencesWithProgress.
	^ self targetModel
]

{ #category : #accessing }
PWBFamixImporter >> defaultImportingContext [
	^ FamixPWBImportingContext new importMaximum
]

{ #category : #initialization }
PWBFamixImporter >> initialize [
  super initialize.
  targetModel := FamixPWBModel new.
  importingContext := self defaultImportingContext
]

{ #category : #private }
PWBFamixImporter >> setUp [
	super setUp.
	visitor := PWBEntityCreatorFutureReferenceSolverVisitor new.
	visitor model: self targetModel.
	visitor importingContext: self importingContext.
]
