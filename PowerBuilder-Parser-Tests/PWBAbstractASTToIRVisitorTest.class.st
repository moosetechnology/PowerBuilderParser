Class {
	#name : #PWBAbstractASTToIRVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor',
		'result',
		'model'
	],
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBAbstractASTToIRVisitorTest >> setUp [
	self setupModel.
	result := PWBCommonParser new parse: self sourceExample.
	result
		fileName: 'testFile';
		fileExtension: 'sru'.
	self setupVisitor.
	visitor
		visit: result;
		resolveUnresolvedReferences
]

{ #category : #running }
PWBAbstractASTToIRVisitorTest >> setupModel [
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
PWBAbstractASTToIRVisitorTest >> setupVisitor [
	self flag: 'TODO: deal with libraries'.
	visitor := PWBEntityCreatorFutureReferenceSolverVisitor new
		importingContext: PWBFamixImporter new importingContext;
		"currentLibrary: (model entityNamed: 'TestLib');"
		file: 'testFile.sru' asFileReference;
		preprocessingMap: OrderedDictionary new;
		initContextStackFromModel: model
]

{ #category : #running }
PWBAbstractASTToIRVisitorTest >> sourceExample [
	self subclassResponsibility 
]

{ #category : #running }
PWBAbstractASTToIRVisitorTest >> sourceText: anEntity [
	^ self sourceExample
		copyFrom: anEntity sourceAnchor startPos
		to: anEntity sourceAnchor endPos
]
