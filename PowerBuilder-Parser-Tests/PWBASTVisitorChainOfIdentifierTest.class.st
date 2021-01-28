Class {
	#name : #PWBASTVisitorChainOfIdentifierTest,
	#superclass : #PWBASTVisitorTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBASTVisitorChainOfIdentifierTest >> setupModel [
	| testuo otheruo |
	super setupModel.

	testuo := model entityNamed: 'test_uo'.

	otheruo := (FamixPWBUserObject named: 'other_uo')
		mooseModel: model ;
		yourself.

	(FamixPWBFunction named: 'myFunc')
		returnType: testuo ;
		parentType: testuo ;
		mooseModel: model.
	(FamixPWBInstanceVariable named: 'uo_var_integer')
		attributeType: (FamixPWBBasicType named: 'integer') ;
		parentType: testuo ;
		mooseModel: model.

	"we need to be able to use:
	 <test_uo variable>.other_att.uo_var_string"
	(FamixPWBInstanceVariable named: 'other_att')
		attributeType: otheruo ;
		parentType: testuo ;
		mooseModel: model.
	(FamixPWBInstanceVariable named: 'uo_var_string')
		attributeType: (FamixPWBBasicType named: 'string') ;
		parentType: otheruo ;
		mooseModel: model.

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
  return this.my_uo.myFunc()
  return this.my_uo.myFunc(5,"allo")
end function'
]

{ #category : #tests }
PWBASTVisitorChainOfIdentifierTest >> testAccessChainOfIdentifierDefinedInForwardIsWellSet [
	| accVar |
	
	self skip.

	self assert: model allAccesses size equals: 3.
	accVar := model allAccesses
		detect: [ :access | access variable name = 'uo_var_string' ]
		ifNone: [ self fail ].
	self assert: accVar variable class equals: FamixPWBInstanceVariable.
	self assert: accVar variable attributeType name equals: 'string'.
	self assert: accVar variable parentType name equals: 'test_uo'
]

{ #category : #tests }
PWBASTVisitorChainOfIdentifierTest >> testAccessInstanceVariable [
	| accVar |
	self assert: model allAccesses size equals: 3.
	accVar := model allAccesses
		detect: [ :access | access variable name = 'uo_var_integer' ]
		ifNone: [self fail].
	self assert: accVar variable class equals: FamixPWBInstanceVariable.
	self assert: accVar variable attributeType name equals: 'integer'.
	self assert: accVar variable parentType name equals: 'test_uo'
]

{ #category : #tests }
PWBASTVisitorChainOfIdentifierTest >> testAccessInstanceVariableSourceText [
	| accVar accMy_uo |
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
PWBASTVisitorChainOfIdentifierTest >> testAccessReadOrWriteIsConsistent [
	| access |
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
PWBASTVisitorChainOfIdentifierTest >> testReturnFunctionInvocationValueIsCorrect [
	| returnValues |
	returnValues := (model allModelMethods
		detect: [ :uf | uf name = 'aFunction' ]
		ifNone: [self fail])
		returns
			collect: #returnValue.
	self
		assertCollection: returnValues
		hasSameElements: {'this.my_uo.myFunc(5,"allo")' . 'this.my_uo.myFunc()'}
]
