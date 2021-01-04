Class {
	#name : #PWBAbstractImporterVisitorsTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor',
		'result',
		'model'
	],
	#category : #'PowerBuilder-Parser-Tests-Visitors'
}

{ #category : #running }
PWBAbstractImporterVisitorsTest >> fileExtension [
	self subclassResponsibility 
]

{ #category : #running }
PWBAbstractImporterVisitorsTest >> importCode: aString [
	result := PWBCommonParser new
		parse: aString.
	result
		fileName: 'testFile';
		fileExtension: self fileExtension.

	self setupVisitor.
	visitor
		visit: result;
		resolveUnresolvedReferences
]

{ #category : #running }
PWBAbstractImporterVisitorsTest >> setUp [
	model := PWBIRModel new.
]

{ #category : #running }
PWBAbstractImporterVisitorsTest >> setupModel [
	| library |
	model := PWBIRModel new.
	self flag: 'TODO: deal with libraries'.
	"library := FamixPWBLibrary new
		name: 'TestLib';
		mooseModel: model;
		yourself."

	model ensureIRForFamixClass: FamixPWBUserObject named: 'test_uo' owner: nil.
]

{ #category : #running }
PWBAbstractImporterVisitorsTest >> setupVisitor [
	self flag: 'TODO: deal with libraries'.
	visitor := PWBEntityCreatorFutureReferenceSolverVisitor new
		"importingContext: PWBFamixImporter new importingContext;"
		"currentLibrary: (model entityNamed: 'TestLib');"
		file: 'testFile.sru' asFileReference;
		"preprocessingMap: OrderedDictionary new;"
		initContextStackFromModel: model
]

{ #category : #running }
PWBAbstractImporterVisitorsTest >> sourceText: anEntity [
	^ self sourceExample
		copyFrom: anEntity sourceAnchor startPos
		to: anEntity sourceAnchor endPos
]
