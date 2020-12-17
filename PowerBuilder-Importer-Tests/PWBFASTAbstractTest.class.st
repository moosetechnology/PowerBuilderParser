"
A visitor for ""FAST"" model (more detailed) on functions.
"
Class {
	#name : #PWBFASTAbstractTest,
	#superclass : #TestCase,
	#instVars : [
		'model',
		'function',
		'importer'
	],
	#category : #'PowerBuilder-Importer-Tests'
}

{ #category : #running }
PWBFASTAbstractTest >> create: aFamixPWBClass named: aString [
	^aFamixPWBClass new
		name: aString ;
		mooseModel: model ;
		yourself

]

{ #category : #running }
PWBFASTAbstractTest >> createAnchor: aPoint [
	^FamixPWBIndexedFileAnchor new
		mooseModel: model ;
		fileName: 'testFile.sru' ;
		startPos: aPoint x ;
		endPos: aPoint y ;
		yourself
]

{ #category : #running }
PWBFASTAbstractTest >> setUp [
	importer := PWBFASTImporter new
			mooseModel: (self setupModel) ;
			pwbFunction: function ;
			yourself.

]

{ #category : #running }
PWBFASTAbstractTest >> setupModel [
	| srcFile |
	model := FamixPWBModel new.

	srcFile := self create: FamixPWBUserObject named: 'testFile'.
	
	function := self create: FamixPWBFunction named: 'aFunction'.
	function parentType: srcFile.

]
