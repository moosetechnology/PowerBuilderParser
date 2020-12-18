Class {
	#name : #PWBASTVisitorChainOfIdentifierTest,
	#superclass : #PWBASTVisitorTest,
	#category : #'PowerBuilder-Importer-Tests'
}

{ #category : #running }
PWBASTVisitorChainOfIdentifierTest >> setupModel [
	| uo |
	super setupModel.

	uo := model entityNamed: 'test_uo'.

	(FamixPWBUserObject named: 'other_uo') mooseModel: model.

	(FamixPWBFunction named: 'funcNoArg')
		returnType: uo;
		parentType: uo;
		mooseModel: model.
	(FamixPWBFunction named: 'funcTwoArgs')
		returnType: uo;
		parentType: uo;
		mooseModel: model.

	(FamixPWBInstanceVariable named: 'uo_var_string')
		attributeType: (FamixPWBBasicType named: 'string');
		parentType: uo;
		mooseModel: model.
	(FamixPWBInstanceVariable named: 'uo_var_integer')
		attributeType: (FamixPWBBasicType named: 'integer');
		parentType: uo;
		mooseModel: model.

	(FamixPWBInstanceVariable named: 'other_att')
		attributeType: uo;
		parentType: (model entityNamed: 'other_uo');
		mooseModel: model

]

{ #category : #running }
PWBASTVisitorChainOfIdentifierTest >> sourceCode: accVar [
	| sourceText |
	sourceText := self sourceExample
		copyFrom: accVar sourceAnchor startPos
		to: accVar sourceAnchor endPos.
	^ sourceText
]

{ #category : #running }
PWBASTVisitorChainOfIdentifierTest >> sourceExample [
	^ 
'forward
  global type testFile from userobject
  end type
  type local_uo from other_uo within testFile
  end type
end forward

global type testFile from userobject
  local_uo local_uo
end type
global testFile testFile

type variables
  test_uo my_uo
end variables

private function integer aFunction ();
  this.my_uo
  this.my_uo.uo_var_integer = 5
  this.local_uo.other_att.uo_var_string = "blah"
  return this.my_uo.funcNoArg()
  return this.my_uo.funcTwoArgs(5,"allo")
end function'
]

{ #category : #running }
PWBASTVisitorChainOfIdentifierTest >> testAccessChainOfIdentifierDefinedInForwardIsWellSet [
	| accVar |
	self skip.
	self assert: model allAccesses size equals: 3.
	accVar := model allAccesses
		detect: [ :access | access variable name = 'var1' ].
	self assert: accVar variable class equals: FamixPWBInstanceVariable.
	self assert: accVar variable name equals: 'var1'.
	self assert: accVar variable attributeType name equals: 'integer'.
	self assert: accVar variable parentType name equals: 'test_uo'
]

{ #category : #running }
PWBASTVisitorChainOfIdentifierTest >> testAccessInstanceVariable [
	| accVar |
	self assert: model allAccesses size equals: 3.
	accVar := model allAccesses
		detect: [ :access | access variable name = 'uo_var_integer' ].
	self assert: accVar variable class equals: FamixPWBInstanceVariable.
	self assert: accVar variable attributeType name equals: 'integer'.
	self assert: accVar variable parentType name equals: 'test_uo'
]

{ #category : #running }
PWBASTVisitorChainOfIdentifierTest >> testAccessInstanceVariableSourceText [
	| accVar accMy_uo |
	self assert: model allAccesses size equals: 3.
	accVar := model allAccesses
		detect: [ :access | access variable name = 'uo_var_integer' ].
	self assert: (self sourceCode: accVar) equals: 'this.my_uo.uo_var_integer'.
	accMy_uo := model allAccesses
		detect: [ :acc | acc variable name = 'my_uo' ].
		"Because my_uo is not write so it not in an assignation statement"
	self assert: (self sourceCode: accMy_uo) equals: '.my_uo'
]

{ #category : #running }
PWBASTVisitorChainOfIdentifierTest >> testAccessReadOrWriteIsConsistent [
	| access |
	access := model allAccesses
		detect: [ :acc | acc variable name = 'my_uo' ].
	self deny: access isWrite.
	access := model allAccesses
		detect: [ :acc | acc variable name = 'uo_var_integer' ].
	self assert: access isWrite
]

{ #category : #running }
PWBASTVisitorChainOfIdentifierTest >> testFunctionInvocation [
	self skip.
	self assert: model allInvocations size equals: 2.

	self assert: (model allInvocations anySatisfy: [:invok | invok candidates anyOne name = 'funcNoArg']).
	self assert: (model allInvocations anySatisfy: [:invok | invok candidates anyOne name = 'funcTwoArgs']).
]

{ #category : #running }
PWBASTVisitorChainOfIdentifierTest >> testReturnFunctionInvocationValueIsCorrect [
	| returnValues |
	returnValues := (model allModelMethods
		detect: [ :uf | uf name = 'aFunction' ]) returns
		collect: #returnValue.
	self
		assertCollection: returnValues
		hasSameElements: {'my_uo.funcTwoArgs(5,"allo")' . 'my_uo.funcNoArg()'}
]
