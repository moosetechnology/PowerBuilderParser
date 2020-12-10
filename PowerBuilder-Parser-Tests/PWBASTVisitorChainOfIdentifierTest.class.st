Class {
	#name : #PWBASTVisitorChainOfIdentifierTest,
	#superclass : #PWBASTVisitorTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBASTVisitorChainOfIdentifierTest >> setupModel [
	super setupModel.
	(FamixPWBInstanceVariable named: 'var')
		attributeType: (FamixPWBBasicType named: 'string');
		parentType: (model entityNamed: 'test_uo');
		mooseModel: model.
	(FamixPWBInstanceVariable named: 'var1')
		attributeType: (FamixPWBBasicType named: 'integer');
		parentType: (model entityNamed: 'test_uo');
		mooseModel: model.
	(FamixPWBFunction named: 'myFunc')
		returnType: (FamixPWBFunctionReturn new type: (model entityNamed: 'test_uo'));
		parentType: (model entityNamed: 'test_uo');
		mooseModel: model.
	(FamixPWBUserObject named: 'test1_uo') mooseModel: model.
	(FamixPWBInstanceVariable named: 'att1')
		attributeType: (model entityNamed: 'test_uo');
		parentType: (model entityNamed: 'test1_uo');
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
	^ 'forward
   global type testFile from userobject
   end type
   type tp_val from userobject end type
    type attTest1_uo from test1_uo end type
	end forward

	type variables
  test_uo my_uo;
end variables

private function integer aFunction ();
  this.attTest1_uo.att1.var1 = 3
  this.my_uo
  this.my_uo.var = 5
  this.my_uo.myFunc()
  return dw_prs.getitemstring(5, "act_fds")
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
		detect: [ :access | access variable name = 'var' ].
	self assert: accVar variable class equals: FamixPWBInstanceVariable.
	self assert: accVar variable name equals: 'var'.
	self assert: accVar variable attributeType name equals: 'string'.
	self assert: accVar variable parentType name equals: 'test_uo'
]

{ #category : #running }
PWBASTVisitorChainOfIdentifierTest >> testAccessInstanceVariableSourceText [
	| accVar accMy_uo |
	self assert: model allAccesses size equals: 3.
	accVar := model allAccesses
		detect: [ :access | access variable name = 'var' ].
	self assert: (self sourceCode: accVar) equals: 'this.my_uo.var'.
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
		detect: [ :acc | acc variable name = 'var' ].
	self assert: access isWrite
]

{ #category : #running }
PWBASTVisitorChainOfIdentifierTest >> testReturnFunctionInvocationValueIsCorrect [
	| return |
	return := (model allModelMethods
		detect: [ :uf | uf name = 'aFunction' ]) returns anyOne.
	self
		assert: return returnValue
		equals: 'dw_prs.getitemstring(5,"act_fds")'
]
