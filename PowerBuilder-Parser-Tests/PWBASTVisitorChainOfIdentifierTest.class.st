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
	(FamixPWBFunction named: 'myFunc')
		returnType: (FamixPWBFunctionReturn new type: (model entityNamed: 'test_uo'));
		parentType: (model entityNamed: 'test_uo');
		mooseModel: model
]

{ #category : #running }
PWBASTVisitorChainOfIdentifierTest >> sourceExample [
	^ 'type variables
  test_uo my_uo; 
end variables

private function integer aFunction ();
  my_uo
  this.my_uo.var = 5
  this.my_uo.myFunc()
  return 0
end function'
]

{ #category : #running }
PWBASTVisitorChainOfIdentifierTest >> testAccessInstanceVariable [
	| accVar |
	self assert: model allAccesses size equals: 2.
	accVar := model allAccesses
		detect: [ :access | access variable name = 'var' ].
	self assert: accVar variable class equals: FamixPWBInstanceVariable.
	self assert: accVar variable name equals: 'var'.
	self assert: accVar variable attributeType name equals: 'string'.
	self assert: accVar variable parentType name equals: 'test_uo'
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
