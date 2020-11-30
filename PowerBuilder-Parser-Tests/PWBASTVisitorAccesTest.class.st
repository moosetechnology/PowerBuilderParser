Class {
	#name : #PWBASTVisitorAccesTest,
	#superclass : #PWBASTVisitorTest,
	#category : #'PowerBuilder-Parser-Tests'
}

{ #category : #running }
PWBASTVisitorAccesTest >> setupModel [
	| pwbUO |
	super setupModel.
	pwbUO := FamixPWBUserObject new
		name: 'test_uo' ;
		mooseModel: model ;
		yourself.
	FamixPWBInstanceVariable new 
		name: 'var' ;
		parentType: pwbUO ;
		mooseModel: model
]

{ #category : #running }
PWBASTVisitorAccesTest >> sourceExample [
	^
'global variables
end variables

type variables
  test_uo my_uo;
end variables

private function integer aFunction ();
  this.my_uo = 4
  this.my_uo.var = 5
  my_uo.myFunction()
  return 0
end function'

]

{ #category : #tests }
PWBASTVisitorAccesTest >> testAccessInstanceVariable [
	self assert: model allAccesses size equals: 3.
	self
		assert:
			(model allAccesses
				allSatisfy: [ :access | access variable class == FamixPWBInstanceVariable ]).
	self
		assert:
			(model allAccesses select: [ :acc | acc variable name = 'my_uo' ])
				size
		equals: 2.
	model allAccesses
		detect: [ :acc | acc variable name = 'var' ]
		ifNone: [ self fail ].
	self
		assert:
			(model allAccesses detect: [ :acc | acc variable name = 'var' ])
				parentType name
		equals: 'test_uo'
]
