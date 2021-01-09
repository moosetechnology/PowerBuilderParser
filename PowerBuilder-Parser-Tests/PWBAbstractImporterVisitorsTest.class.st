Class {
	#name : #PWBAbstractImporterVisitorsTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor',
		'result',
		'model',
		'sourceExample'
	],
	#category : #'PowerBuilder-Parser-Tests-Visitors'
}

{ #category : #running }
PWBAbstractImporterVisitorsTest >> fileExtension [
	self subclassResponsibility 
]

{ #category : #running }
PWBAbstractImporterVisitorsTest >> importCode: aString [
	sourceExample := aString.

	result := PWBCommonParser new
		parse: sourceExample.
	result
		fileName: 'majorObjectTest';
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
PWBAbstractImporterVisitorsTest >> setupVisitor [
	self flag: 'TODO: deal with libraries'.
	visitor := PWBEntityCreatorFutureReferenceSolverVisitor new
		"importingContext: PWBFamixImporter new importingContext;"
		"currentLibrary: (model entityNamed: 'TestLib');"
		file: ('majorObjectTest.' , self fileExtension) asFileReference;
		"preprocessingMap: OrderedDictionary new;"
		initContextStackFromModel: model
]

{ #category : #running }
PWBAbstractImporterVisitorsTest >> sourceText: anEntity [
	^sourceExample
		copyFrom: anEntity sourceAnchor startPos
		to: anEntity sourceAnchor endPos
]
