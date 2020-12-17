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
PWBFASTVisitorTest >> testParseFunctionAccessesThis [
	| result |
	importer
		sourceCode: 'function integer aFunction ();
	this
end function'.
	result := importer run.

	self assert: result size equals: 1.

	self assert: result first class equals: FASTPWBImplicitVariable.
	self assert: result first startPos equals: 33.
	self assert: result first endPos equals: 36.
	

]

{ #category : #tests }
PWBFASTVisitorTest >> testParseFunctionReturnAnchor [
	| result |
	importer
		sourceCode: 'function integer aFunction ();
	return 1
end function'.
	result := importer run.

	result := result
		detect: [ :each | each  class = FASTPWBReturnStatement ]
		ifNone: [ nil ].

	self assert: result isNotNil.
	self assert: result startPos equals: 33.
	self assert: result endPos equals: 40.

]

{ #category : #tests }
PWBFASTVisitorTest >> testParseFunctionReturnsLiteral [
	| result |
	importer
		sourceCode: 'function integer aFunction ();
	return 1
end function'.
	result := importer run.

	self assert: result size equals: 2.
	
	result := result
		detect: [ :each | each  class = FASTPWBReturnStatement ]
		ifNone: [ nil ].

	self assert: result notNil.
	self assert: result expression class equals: FASTPWBIntegerLiteral.
	self assert: result expression value equals: '1'
	

]

{ #category : #tests }
PWBFASTVisitorTest >> testParseIncorrectFunction [
	| result |
	importer sourceCode: 'end function'.
	result := importer run.
	self assert:
		result isNil
]
