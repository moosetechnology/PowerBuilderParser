Class {
	#name : #PWBFASTFamixBindingTest,
	#superclass : #PWBFASTAbstractTest,
	#instVars : [
		'fastEntities',
		'binder'
	],
	#category : #'PowerBuilder-Importer-Tests'
}

{ #category : #running }
PWBFASTFamixBindingTest >> functionSource [
	"the source code of the function here must match the model entities created in #setupModel"
	^ 
'private function integer aFunction ();
  this.my_uo
  this.my_uo.uo_var_integer = 5
  this.local_uo.other_att.uo_var_string = "blah"
  return this.my_uo.funcNoArg()
  return this.my_uo.funcTwoArgs(5,"allo")
end function'
]

{ #category : #running }
PWBFASTFamixBindingTest >> setUp [
	super setUp.

	importer sourceCode: self functionSource.
	fastEntities := importer run.
	
	binder := PWBFamixFASTBinder new
		famixEntity: function ;
		yourself

]

{ #category : #running }
PWBFASTFamixBindingTest >> setupModel [
	"in this model, the sourAnchor positions must match the code of the entire file (see for example PWBASTVisitorChainOfIdentifierTest >> #sourceExample ) and the source code for the function in #setUp"
	
	| var uo |
	super setupModel.

	function sourceAnchor: (self createAnchor: 267@485).  "end position does not matter, but start position is important for FAST/Famix binding"

	uo := self create: FamixPWBUserObject named: 'test_uo'.

	var := (self create: FamixPWBInstanceVariable named: 'my_uo')
		parentType: function parentType ; "i.e. testFile"
		attributeType: uo ;
		yourself.
	FamixPWBAccess new
		mooseModel: model ;
		accessor: function ;
		variable: var ;
		sourceAnchor: (self createAnchor: 312@317). 

	var := (self create: FamixPWBInstanceVariable named: 'uo_var_integer')
		parentType: uo ;
		attributeType: (self create: FamixPWBBasicType named: 'integer') ;
		yourself.
	FamixPWBAccess new
		mooseModel: model ;
		accessor: function ;
		variable: var ;
		sourceAnchor: (self createAnchor: 321@345). 

	FamixPWBInvocation new
		mooseModel: model ;
		sender: function ;
		candidates: { FamixPWBFunction new name: 'testFile.funcNoArg' ; yourself } ;
		sourceAnchor: (self createAnchor: 419@430). 
	FamixPWBInvocation new
		mooseModel: model ;
		sender: function ;
		candidates: { FamixPWBFunction new name: 'testFile.funcTwoArgs' ; yourself } ;
		sourceAnchor: (self createAnchor: 451@472). 

]

{ #category : #tests }
PWBFASTFamixBindingTest >> testBindingAccess [
	| fastAccess famixAccess|
	binder fastEntities: (fastEntities select: [ :fast | fast class = FASTPWBAccess ]).
	binder bind.
	
	fastAccess := fastEntities detect: [ :fast | (fast class = FASTPWBAccess) and: [ fast identifier name = 'uo_var_integer'  ] ].
	famixAccess := (model allWithType: FamixPWBAccess) detect: [ :fmx | fmx variable name = 'uo_var_integer'  ].
	self
		assert: (binder famixBinding: fastAccess)
		equals: famixAccess.
	self
		assert: (binder fastBinding: famixAccess)
		equals: fastAccess.

	fastAccess := fastEntities detect: [ :fast | (fast class = FASTPWBAccess) and: [ fast identifier name = 'my_uo'  ] ].
	famixAccess := (model allWithType: FamixPWBAccess) detect: [ :fmx | fmx variable name = 'my_uo'  ].
	self
		assert: (binder famixBinding: fastAccess)
		equals: famixAccess.
	self
		assert: (binder fastBinding: famixAccess)
		equals: fastAccess.


]

{ #category : #tests }
PWBFASTFamixBindingTest >> testBindingInvocation [
	| fastInvok famixInvok |
	binder fastEntities: (fastEntities select: [ :fast | fast class = FASTPWBFunctionInvocation ]).
	binder bind.

	fastInvok := fastEntities detect: [ :fast | (fast class = FASTPWBFunctionInvocation) and: [ fast identifier name = 'funcNoArg'  ] ].
	famixInvok := (model allWithType: FamixPWBInvocation) detect: [ :fmx | fmx candidates anyOne name = 'funcNoArg'  ].
	self
		assert: (binder famixBinding: fastInvok)
		equals: famixInvok.
	self
		assert: (binder fastBinding: famixInvok)
		equals: fastInvok.

	fastInvok := fastEntities detect: [ :fast | (fast class = FASTPWBFunctionInvocation) and: [ fast identifier name = 'funcTwoArgs'  ] ].
	famixInvok := (model allWithType: FamixPWBInvocation) detect: [ :fmx | fmx candidates anyOne name = 'funcTwoArgs'  ].
	self
		assert: (binder famixBinding: fastInvok)
		equals: famixInvok.
	self
		assert: (binder fastBinding: famixInvok)
		equals: fastInvok.

]
