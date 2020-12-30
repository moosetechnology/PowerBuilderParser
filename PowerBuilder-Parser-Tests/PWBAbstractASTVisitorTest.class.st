Class {
	#name : #PWBAbstractASTVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor',
		'result',
		'model'
	],
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBAbstractASTVisitorTest >> setUp [
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
PWBAbstractASTVisitorTest >> setupModel [
	| library |
	model := FamixPWBModel new.
	library := FamixPWBLibrary new
		name: 'TestLib';
		mooseModel: model;
		yourself.

	FamixPWBUserObject new
		name: 'test_uo' ;
		mooseModel: model ;
		yourself.
]

{ #category : #running }
PWBAbstractASTVisitorTest >> setupVisitor [
	visitor := PWBEntityCreatorFutureReferenceSolverVisitor new
		importingContext: PWBFamixImporter new importingContext;
		currentLibrary: (model entityNamed: 'TestLib');
		file: 'testFile.sru' asFileReference;
		preprocessingMap: OrderedDictionary new;
		initContextStackFromModel: model
]

{ #category : #running }
PWBAbstractASTVisitorTest >> sourceExample [
	self subclassResponsibility 
]

{ #category : #running }
PWBAbstractASTVisitorTest >> sourceText: anEntity [
	^ self sourceExample
		copyFrom: anEntity sourceAnchor startPos
		to: anEntity sourceAnchor endPos
]
