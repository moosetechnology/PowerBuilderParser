"
A visitor for ""FAST"" model (more detailed) on functions.
"
Class {
	#name : #PWBFASTVisitorTest,
	#superclass : #TestCase,
	#instVars : [
		'importer'
	],
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBFASTVisitorTest >> setUp [
	importer := PWBFASTImporter new
			mooseModel: (self setupModel) ;
			yourself.

]

{ #category : #running }
PWBFASTVisitorTest >> setupModel [
	| model |
	model := FamixPWBModel new.
	FamixPWBUserObject new
		name: 'test_uo' ;
		mooseModel: model.
	^ model
]

{ #category : #tests }
PWBFASTVisitorTest >> testParseEmptyFunction [
	| result |
	importer sourceCode: 'function integer aFunction ();
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
