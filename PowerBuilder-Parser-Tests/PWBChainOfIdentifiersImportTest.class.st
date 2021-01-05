Class {
	#name : #PWBChainOfIdentifiersImportTest,
	#superclass : #PWBSRUImporterVisitorsTest,
	#category : #'PowerBuilder-Parser-Tests-Visitors'
}

{ #category : #running }
PWBChainOfIdentifiersImportTest >> setUp [
	| testuo otheruo |
	super setUp.

	testuo := model getAllIR: PWBIRType named: 'majorObjectTest'.
	otheruo := model ensureIRForFamixClass: FamixPWBUserObject named: 'other_uo' owner: nil.

	(model ensureIRForFamixClass: FamixPWBFunction named: 'myFunc' owner: testuo)
		declaredType: testuo.

	(model ensureIRForFamixClass: FamixPWBInstanceVariable named: 'uo_var_integer' owner: testuo)
		declaredType: (model ensureIRForFamixClass: FamixPWBBasicType named: 'integer' owner: nil).

	"we need to be able to use:
	 <test_uo variable>.other_att.uo_var_string"
	(model ensureIRForFamixClass: FamixPWBInstanceVariable named: 'other_att' owner: testuo)
		declaredType: otheruo.
	(model ensureIRForFamixClass: FamixPWBInstanceVariable named: 'uo_var_string' owner: otheruo)
		declaredType: (model ensureIRForFamixClass: FamixPWBBasicType named: 'string' owner: nil).

]

{ #category : #tests }
PWBChainOfIdentifiersImportTest >> testAccessChainOfIdentifierDefinedInForwardIsWellSet [
	| accVar |
	
	self skip.

	self importCode:
'forward
  global type testFile from userobject
  end type
  type local_uo from other_uo within testFile
  end type
end forward

global type testFile from userobject
  local_uo local_uo
  boolean toto
end type
global testFile testFile

type variables
  test_uo my_uo
end variables

private function integer aFunction ();
  this.my_uo
  this.my_uo.uo_var_integer = 5
  this.local_uo.other_att.uo_var_string = "blah"
  return this.my_uo.myFunc()
  return this.my_uo.myFunc(5,"allo")
end function'.

	self assert: model allAccesses size equals: 3.
	accVar := model allAccesses
		detect: [ :access | access variable name = 'uo_var_string' ]
		ifNone: [ self fail ].
	self assert: accVar variable class equals: FamixPWBInstanceVariable.
	self assert: accVar variable attributeType name equals: 'string'.
	self assert: accVar variable parentType name equals: 'test_uo'
]

{ #category : #tests }
PWBChainOfIdentifiersImportTest >> testAccessInstanceVariable [
	| accesses fct |

	self importCode:
'forward
  global type testFile from userobject
  end type
  type local_uo from other_uo within testFile
  end type
end forward

global type testFile from userobject
  local_uo local_uo
  boolean toto
end type
global testFile testFile

type variables
  test_uo my_uo
end variables

private function integer aFunction ();
  this.my_uo
  this.my_uo.uo_var_integer = 5
  this.local_uo.other_att.uo_var_string = "blah"
  return this.my_uo.myFunc()
  return this.my_uo.myFunc(5,"allo")
end function'.

	fct := (model getAllIR: PWBIRFunction named: 'aFunction')
				anyOne.

	accesses := fct dependencies select: [ :ir | ir class = PWBIRValueHolder ].
	self assert: accesses size equals: 13.
	self assert: ((accesses select: [ :var | var name = 'this']) size) equals: 5.
	self assert: ((accesses select: [ :var | var name = 'my_uo']) size) equals: 4.
	self assert: ((accesses select: [ :var | var name = 'uo_var_integer']) size) equals: 1.
	self assert: ((accesses select: [ :var | var name = 'local_uo']) size) equals: 1.
	self assert: ((accesses select: [ :var | var name = 'other_att']) size) equals: 1.
	self assert: ((accesses select: [ :var | var name = 'uo_var_string']) size) equals: 1.
]

{ #category : #tests }
PWBChainOfIdentifiersImportTest >> testAccessInstanceVariableSourceText [
	| accVar accMy_uo |
	self skip.
	self flag: #TODOSourceAnchor.


	self importCode:
'forward
  global type testFile from userobject
  end type
  type local_uo from other_uo within testFile
  end type
end forward

global type testFile from userobject
  local_uo local_uo
  boolean toto
end type
global testFile testFile

type variables
  test_uo my_uo
end variables

private function integer aFunction ();
  this.my_uo
  this.my_uo.uo_var_integer = 5
  this.local_uo.other_att.uo_var_string = "blah"
  return this.my_uo.myFunc()
  return this.my_uo.myFunc(5,"allo")
end function'.

	self assert: model allAccesses size equals: 3.
	accVar := model allAccesses
		detect: [ :access | access variable name = 'uo_var_integer' ]
		ifNone: [self fail].
	self assert: (self sourceText: accVar) equals: 'this.my_uo.uo_var_integer'.
	accMy_uo := model allAccesses
		detect: [ :acc | acc variable name = 'my_uo' ]
		ifNone: [self fail].
		"Because my_uo is not write so it not in an assignation statement"
	self assert: (self sourceText: accMy_uo) equals: '.my_uo'
]

{ #category : #tests }
PWBChainOfIdentifiersImportTest >> testAccessReadOrWriteIsConsistent [
	| access |
	self skip.
	self flag: 'TODO read/write accesses'.


	self importCode:
'forward
  global type testFile from userobject
  end type
  type local_uo from other_uo within testFile
  end type
end forward

global type testFile from userobject
  local_uo local_uo
  boolean toto
end type
global testFile testFile

type variables
  test_uo my_uo
end variables

private function integer aFunction ();
  this.my_uo
  this.my_uo.uo_var_integer = 5
  this.local_uo.other_att.uo_var_string = "blah"
  return this.my_uo.myFunc()
  return this.my_uo.myFunc(5,"allo")
end function'.

	access := model allAccesses
		detect: [ :acc | acc variable name = 'my_uo' ]
		ifNone: [self fail].
	self deny: access isWrite.
	access := model allAccesses
		detect: [ :acc | acc variable name = 'uo_var_integer' ]
		ifNone: [self fail].
	self assert: access isWrite
]

{ #category : #tests }
PWBChainOfIdentifiersImportTest >> testReturnFunctionInvocationValueIsCorrect [
	| returnValues |
	self skip.
	self flag: #TODO.

	self importCode:
'forward
  global type testFile from userobject
  end type
  type local_uo from other_uo within testFile
  end type
end forward

global type testFile from userobject
  local_uo local_uo
  boolean toto
end type
global testFile testFile

type variables
  test_uo my_uo
end variables

private function integer aFunction ();
  this.my_uo
  this.my_uo.uo_var_integer = 5
  this.local_uo.other_att.uo_var_string = "blah"
  return this.my_uo.myFunc()
  return this.my_uo.myFunc(5,"allo")
end function'.

	returnValues := (model allModelMethods
		detect: [ :uf | uf name = 'aFunction' ]
		ifNone: [self fail])
		returns
			collect: #returnValue.
	self
		assertCollection: returnValues
		hasSameElements: {'this.my_uo.myFunc(5,"allo")' . 'this.my_uo.myFunc()'}
]
