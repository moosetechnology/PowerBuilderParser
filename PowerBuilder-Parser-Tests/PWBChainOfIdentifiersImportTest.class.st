Class {
	#name : #PWBChainOfIdentifiersImportTest,
	#superclass : #PWBSRUImporterVisitorsTest,
	#category : #'PowerBuilder-Parser-Tests-Visitors'
}

{ #category : #running }
PWBChainOfIdentifiersImportTest >> setUp [
	| mainuo otheruo |
	super setUp.

	mainuo := (model getAllIR: PWBIRType named: 'majorObjectTest') anyOne.
	otheruo := model ensureIRForFamixClass: FamixPWBUserObject named: 'other_uo' owner: nil.

	(model ensureIRForFamixClass: FamixPWBFunction named: 'myFunc' owner: mainuo)
		declaredType: mainuo.

	(model ensureIRForFamixClass: FamixPWBInstanceVariable named: 'uo_var_integer' owner: mainuo)
		declaredType: (model ensureIRForFamixClass: FamixPWBBasicType named: 'integer' owner: nil).

	"we need to be able to use:
	 <test_uo variable>.other_att.uo_var_string"
	(model ensureIRForFamixClass: FamixPWBInstanceVariable named: 'other_att' owner: mainuo)
		declaredType: otheruo.
	(model ensureIRForFamixClass: FamixPWBInstanceVariable named: 'uo_var_string' owner: otheruo)
		declaredType: (model ensureIRForFamixClass: FamixPWBBasicType named: 'string' owner: nil).

]

{ #category : #tests }
PWBChainOfIdentifiersImportTest >> testAccessChainOfIdentifierDefinedInForward [
	| localuo fct accesses |
	localuo := model
		ensureIRForFamixClass: FamixPWBUserObject
		named: 'local_uo'
		owner: (model getAllIR: PWBIRType named: 'other_uo') anyOne.
	model ensureIRForFamixClass: FamixPWBInstanceVariable named: 'localuo_var' owner: localuo.

	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
  type local_uo from other_uo within majorObjectTest
  end type
end forward

global type majorObjectTest from userobject
  local_uo local_uo
end type

private function integer aFunction ();
  this.local_uo.localuo_var = "blah"
end function'.

	fct := (model getAllIR: PWBIRFunction named: 'aFunction')
				anyOne.

	accesses := fct dependencies select: [ :ir | ir class = PWBIRValueHolder ].
	self assert: accesses size equals: 3.
	self assert: ((accesses select: [ :var | var name = 'this']) size) equals: 1.
	self assert: ((accesses select: [ :var | var name = 'local_uo']) size) equals: 1.
	self assert: ((accesses select: [ :var | var name = 'localuo_var']) size) equals: 1.

]

{ #category : #tests }
PWBChainOfIdentifiersImportTest >> testAccessChainOfIdentifierWithFunctionCall [
	| fct candidates |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

type variables
  other_uo my_uo
end variables

private function integer aFunction ();
  this.my_uo.myFunc(5,"allo")
end function
'.

	fct := (model getAllIR: PWBIRFunction named: 'aFunction')
				anyOne.

	self assert: fct dependencies size equals: 3.
	fct dependencies detect: [ :dep | dep name = 'this']  ifNone: [ self fail ].
	fct dependencies detect: [ :dep | dep name = 'my_uo'] ifNone: [ self fail ].

	candidates := fct dependencies detect: [ :dep | dep isCollection] ifNone: [ self fail ].
	self assert: candidates size equals: 1.
	self assert: candidates anyOne name equals: 'myFunc'.
	self assert: candidates anyOne class equals: PWBIRFunction.
	self assert: candidates anyOne owner isNil.

]

{ #category : #tests }
PWBChainOfIdentifiersImportTest >> testAccessInstanceVariableSourceText [
	| accVar accMy_uo |
	self skip.
	self flag: #TODOSourceAnchor.


	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
  type local_uo from other_uo within majorObjectTest
  end type
end forward

global type majorObjectTest from userobject
  local_uo local_uo
  boolean toto
end type
global majorObjectTest majorObjectTest

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
  global type majorObjectTest from userobject
  end type
  type local_uo from other_uo within majorObjectTest
  end type
end forward

global type majorObjectTest from userobject
  local_uo local_uo
  boolean toto
end type
global majorObjectTest majorObjectTest

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
PWBChainOfIdentifiersImportTest >> testAccessThisInstanceVariable [
	| accesses fct nbType nbFunc nbVar |

	nbType := (model getAllIR: PWBIRType) size.
	nbFunc := (model getAllIR: PWBIRFunction) size.
	nbVar  := (model getAllIR: PWBIRValueHolder) size.

	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

type variables
  other_uo my_uo
end variables

private function integer myFunc ();
  this.my_uo
end function'.

	self assert: (model getAllIR: PWBIRType) size equals: nbType.
	self assert: (model getAllIR: PWBIRFunction) size equals: nbFunc.
	self assert: (model getAllIR: PWBIRValueHolder) size equals: nbVar + 2. "my_uo, this"

	fct := (model getAllIR: PWBIRFunction named: 'myFunc')
				anyOne.

	accesses := fct dependencies select: [ :ir | ir class = PWBIRValueHolder ].
	self assert: accesses size equals: 2.
	self
		assertCollection: (accesses collect: #name)
		hasSameElements: #( this my_uo ).

	self assert: (accesses detect: [:ir | ir name = 'this']) declaredType isNotNil.
	self assert: (accesses detect: [:ir | ir name = 'this']) declaredType name equals: 'majorObjectTest'.

	self assert: (accesses detect: [:ir | ir name = 'my_uo']) declaredType isNotNil.
	self assert: (accesses detect: [:ir | ir name = 'my_uo']) declaredType name equals: 'other_uo'.

]

{ #category : #tests }
PWBChainOfIdentifiersImportTest >> testAccessThisInstanceVariableInstanceVariable [
	| accesses fct nbType nbFunc nbVar |

	nbType := (model getAllIR: PWBIRType) size.
	nbFunc := (model getAllIR: PWBIRFunction) size.
	nbVar  := (model getAllIR: PWBIRValueHolder) size.

	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

type variables
  other_uo my_uo
end variables

private function integer myFunc ();
  this.my_uo.uo_var_string = 5
end function'.

	self assert: (model getAllIR: PWBIRType) size equals: nbType.
	self assert: (model getAllIR: PWBIRFunction) size equals: nbFunc.
	self assert: (model getAllIR: PWBIRValueHolder) size equals: nbVar + 2. "my_uo, this"

	fct := (model getAllIR: PWBIRFunction named: 'myFunc')
				anyOne.

	accesses := fct dependencies select: [ :ir | ir class = PWBIRValueHolder ].
	self assert: accesses size equals: 3.
	self
		assertCollection: (accesses collect: #name)
		hasSameElements: #( this my_uo uo_var_string ).

	self assert: (accesses detect: [:ir | ir name = 'uo_var_string']) declaredType isNotNil.
	self assert: (accesses detect: [:ir | ir name = 'uo_var_string']) declaredType name equals: 'string'.

]

{ #category : #tests }
PWBChainOfIdentifiersImportTest >> testReturnFunctionInvocationValueIsCorrect [
	| returnValues |
	self skip.
	self flag: #TODO.

	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
  type local_uo from other_uo within majorObjectTest
  end type
end forward

global type majorObjectTest from userobject
  local_uo local_uo
  boolean toto
end type
global majorObjectTest majorObjectTest

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
