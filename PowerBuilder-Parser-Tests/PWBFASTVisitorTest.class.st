"
A visitor for ""FAST"" model (more detailed) on functions.
"
Class {
	#name : #PWBFASTVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'visitor',
		'model',
		'function',
		'importer'
	],
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBFASTVisitorTest >> create: aFamixPWBClass named: aString [
	^aFamixPWBClass new
		name: aString ;
		mooseModel: model ;
		yourself

]

{ #category : #running }
PWBFASTVisitorTest >> createAnchor: aPoint [
	^FamixPWBIndexedFileAnchor new
		mooseModel: model ;
		fileName: 'testFile.sru' ;
		startPos: aPoint x ;
		endPos: aPoint y ;
		yourself
]

{ #category : #running }
PWBFASTVisitorTest >> setUp [
	importer := PWBFASTImporter new
			mooseModel: (self setupModel) ;
			pwbFunction: function ;
			yourself.

]

{ #category : #running }
PWBFASTVisitorTest >> setupModel [
	| uo att tmp |
	model := FamixPWBModel new.

	tmp := self create: FamixPWBUserObject named: 'test_uo'.
	uo := self create: FamixPWBUserObject named: 'testFile'.
	
	function := self create: FamixPWBFunction named: 'aFunction'.
	function parentType: uo.

	att := self create: FamixPWBInstanceVariable named: 'my_uo'.
	att parentType: uo.
	att attributeType: tmp.
	FamixPWBAccess new
		mooseModel: model ;
		accessor: function ;
		variable: att ;
		sourceAnchor: (self createAnchor: 285@290).
]

{ #category : #tests }
PWBFASTVisitorTest >> testParseEmptyFunction [
	| result |
	importer
		sourceCode: 'function integer aFunction ();
	long aVar
end function'.
	result := importer run.
	self assert: result notNil.

"private function integer aFunction ();
  this.attTest1_uo.att1.var1 = 3
  this.my_uo
  this.my_uo.var = 5
  this.my_uo.myFunc()
  return this.my_uo.myFunc()
  return this.my_uo.myFunc(5,""allo"")
end function"
]

{ #category : #tests }
PWBFASTVisitorTest >> testParseIncorrectFunction [
	| result |
	importer sourceCode: 'end function'.
	result := importer run.
	self assert:
		result isNil
]

{ #category : #tests }
PWBFASTVisitorTest >> testParseSimpleAccessFunction [
	| result |
	importer
		sourceCode: 'function integer aFunction ();
	testFile.my_uo
end function'.
	result := importer run.
	self assert: result notNil.

]
