Class {
	#name : #PWBASTVisitorAccesTest,
	#superclass : #PWBASTVisitorTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBASTVisitorAccesTest >> setupModel [
	super setupModel.
	FamixPWBInstanceVariable new
		name: 'var';
		attributeType: (FamixPWBBasicType named: 'string');
		parentType: (model entityNamed: 'test_uo');
		mooseModel: model
]

{ #category : #running }
PWBASTVisitorAccesTest >> sourceExample [
	^ 'type variables
  test_uo my_uo;
end variables

private function integer aFunction ();
  this.my_uo.var = 5
  return 0
end function'
]

{ #category : #tests }
PWBASTVisitorAccesTest >> testAccessInstanceVariable [
	self assert: model allAccesses size equals: 1.
	self
		assert:
			(model allAccesses
				allSatisfy: [ :access | access variable class == FamixPWBInstanceVariable ]).
	self
		assert:
			(model allAccesses select: [ :acc | acc variable name = 'my_uo' ])
				size
		equals: 0.
	model allAccesses
		detect: [ :acc | acc variable name = 'var' ]
		ifNone: [ self fail ].
	self
		assert:
			(model allAccesses detect: [ :acc | acc variable name = 'var' ])
				variable parentType name
		equals: 'test_uo'
]

{ #category : #tests }
PWBASTVisitorAccesTest >> testAccessReadOrWriteIsConsistent [
	self
		assert:
			((model allAccesses select: [ :acc | acc variable name = 'my_uo' ])
				allSatisfy: [ :access | access isWrite not ])
]
