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
	otheruo := model ensureIRForFamixClass: FamixPWBUserObject named: 'other_uo' owner: mainuo.

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

	accesses := fct dependencies select: [ :ir | ir class = PWBIRDependencyAccess ].
	self assert: accesses size equals: 3.
	self assert: ((accesses select: [ :dep | dep irEntity name = 'this']) size) equals: 1.
	self assert: ((accesses select: [ :dep | dep irEntity name = 'local_uo']) size) equals: 1.
	self assert: ((accesses select: [ :dep | dep irEntity name = 'localuo_var']) size) equals: 1.

]

{ #category : #tests }
PWBChainOfIdentifiersImportTest >> testAccessChainOfIdentifierWithFunctionCall [
	| fct invoked |
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
	"dependecy to valueHolder 'this'"
	self assert:
		(fct dependencies
			anySatisfy: [ :dep |
				(dep class = PWBIRDependencyAccess) and:
				[dep irEntity name = 'this'] ]).
	"dependecy to valueHolder 'my_uo'"
	self assert:
		(fct dependencies
			anySatisfy: [ :dep |
				(dep class = PWBIRDependencyAccess) and:
				[dep irEntity name = 'my_uo'] ]).
	"dependecy to function 'myFunc'"
	invoked := fct dependencies
		detect: [ :dep | dep class = PWBIRDependencyInvocation]
		ifOne: [ :dep | dep candidates ]
		ifNone: [ self fail ].
	self assert: invoked size equals: 1.
	self assert: invoked anyOne name equals: 'myFunc'.
	self assert: invoked anyOne class equals: PWBIRFunction.
	self assert: invoked anyOne owner name equals: 'other_uo'.

]

{ #category : #tests }
PWBChainOfIdentifiersImportTest >> testAccessThisFunctionFunction [
	| fct invoked |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

private function majorObjectTest myFunc ();
  this.myFunc().otherFunc()
end function'.

	fct := (model getAllIR: PWBIRFunction named: 'myFunc')
				anyOne.

	self assert: fct dependencies size equals: 3.
	"dependecy to valueHolder 'this'"
	self assert:
		(fct dependencies
			anySatisfy: [ :dep |
				(dep class = PWBIRDependencyAccess) and:
				[dep irEntity name = 'this'] ]).
	"dependecy to function 'myFunc'"
	self assert:
		(fct dependencies
			anySatisfy: [ :dep |
				(dep class = PWBIRDependencyInvocation) and:
				[dep candidates anySatisfy: [ :c | c name = 'myFunc']] ]).
	"dependecy to function 'otherFunc'"
	invoked := fct dependencies
		detect: [ :dep | (dep class = PWBIRDependencyInvocation)  and:
				[dep candidates anySatisfy: [ :c | c name = 'otherFunc']] ]
		ifOne: [ :dep | dep candidates ]
		ifNone: [ self fail ].

	self assert: invoked size equals: 1.
	self assert: invoked anyOne name equals: 'otherFunc'.
	self assert: invoked anyOne class equals: PWBIRFunction.
	self assert: invoked anyOne owner name equals: 'majorObjectTest'.

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

private function majorObjectTest myFunc ();
  this.my_uo
end function'.

	self assert: (model getAllIR: PWBIRType) size equals: nbType.
	self assert: (model getAllIR: PWBIRFunction) size equals: nbFunc.
	self assert: (model getAllIR: PWBIRValueHolder) size equals: nbVar + 2. "my_uo, this"

	fct := (model getAllIR: PWBIRFunction named: 'myFunc')
				anyOne.

	accesses := fct dependencies select: [ :ir | ir class = PWBIRDependencyAccess ].
	self assert: accesses size equals: 2.

	self assert: (accesses detect: [ :dep | dep irEntity name = 'this']) irEntity declaredType isNotNil.
	self assert: (accesses detect: [ :dep | dep irEntity name = 'this']) irEntity declaredType name equals: 'majorObjectTest'.

	self assert: (accesses detect: [ :dep | dep irEntity name = 'my_uo']) irEntity declaredType isNotNil.
	self assert: (accesses detect: [ :dep | dep irEntity name = 'my_uo']) irEntity declaredType name equals: 'other_uo'.

]

{ #category : #tests }
PWBChainOfIdentifiersImportTest >> testAccessThisInstanceVariableInstanceVariableExisting [
	| accesses var |

	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
  type other_uo from userobject
  end type
end forward

type variables
  other_uo my_uo
end variables

private function majorObjectTest myFunc ();
  this.my_uo.uo_var_string = 5
end function'.

	self assert: (model getAllIR: PWBIRValueHolder) size equals: 5.
	self
		assertCollection: ((model getAllIR: PWBIRValueHolder) collect: #name)
		hasSameElements: #( this my_uo uo_var_string uo_var_integer other_att ).

	accesses := (model getAllIR: PWBIRFunction) anyOne dependencies.
	self assert: accesses size equals: 3.
	self assert: (accesses allSatisfy: [ :dep | dep class = PWBIRDependencyAccess ]).
	self
		assertCollection: (accesses collect: [ :dep | dep irEntity name])
		hasSameElements: #( this my_uo uo_var_string ).

	var := (model getAllIR: PWBIRValueHolder named: 'uo_var_string')
				anyOne.
	self assert: var owner class equals: PWBIRType.
	self assert: var owner name equals: 'other_uo'.
	self assert: var owner owner name equals: 'majorObjectTest'.
]

{ #category : #tests }
PWBChainOfIdentifiersImportTest >> testAccessThisInstanceVariableInstanceVariableStub [
	| accesses var |

	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
  type other_uo from userobject
  end type
end forward

type variables
  other_uo my_uo
end variables

private function majorObjectTest myFunc ();
  this.my_uo.new_var = 5
end function'.

	self assert: (model getAllIR: PWBIRValueHolder) size equals: 6.
	self
		assertCollection: ((model getAllIR: PWBIRValueHolder) collect: #name)
		hasSameElements: #( this my_uo new_var uo_var_string uo_var_integer other_att ).

	accesses := (model getAllIR: PWBIRFunction) anyOne dependencies.
	self assert: accesses size equals: 3.
	self assert: (accesses allSatisfy: [ :dep | dep class = PWBIRDependencyAccess ]).
	self
		assertCollection: (accesses collect: [ :dep | dep irEntity name])
		hasSameElements: #( this my_uo new_var ).

	var := (model getAllIR: PWBIRValueHolder named: 'new_var')
				anyOne.
	self assert: var owner class equals: PWBIRType.
	self assert: var owner name equals: 'other_uo'.
	self assert: var owner owner name equals: 'majorObjectTest'.

]

{ #category : #tests }
PWBChainOfIdentifiersImportTest >> testAccessThisInstanceVariableStub [
	| accesses fct |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

private function long anotherFunction (); 
  this.il_long = 5
end function
'.

	fct := (model getAllIR: PWBIRFunction named: 'anotherFunction')
				anyOne.

	accesses := fct dependencies select: [ :ir | ir class = PWBIRDependencyAccess ].
	self assert: accesses size equals: 2.
	self assert: ((accesses select: [ :dep | dep irEntity name = 'this']) size) equals: 1.
	self assert: ((accesses select: [ :dep | dep irEntity name = 'il_long']) size) equals: 1.

]

{ #category : #tests }
PWBChainOfIdentifiersImportTest >> testAccessThisInstanceVariableStubInstanceVariable [
	| accesses var |

	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
  type new_uo from userobject
  end type
end forward

type variables
  new_uo my_uo
end variables

private function majorObjectTest myFunc ();
  this.my_uo.new_var = 5
end function'.

	self assert: (model getAllIR: PWBIRType) size equals: 6.
	self
		assertCollection: ((model getAllIR: PWBIRType) collect: #name)
		hasSameElements: #( majorObjectTest userobject new_uo other_uo integer string ).

	self assert: (model getAllIR: PWBIRValueHolder) size equals: 6.
	self
		assertCollection: ((model getAllIR: PWBIRValueHolder) collect: #name)
		hasSameElements: #( this my_uo new_var uo_var_string uo_var_integer other_att ).

	accesses := (model getAllIR: PWBIRFunction) anyOne dependencies.
	self assert: accesses size equals: 3.
	self assert: (accesses allSatisfy: [ :dep | dep class = PWBIRDependencyAccess ]).
	self
		assertCollection: (accesses collect: [ :dep | dep irEntity name])
		hasSameElements: #( this my_uo new_var ).

	var := (model getAllIR: PWBIRValueHolder named: 'new_var')
				anyOne.
	self assert: var owner class equals: PWBIRType.
	self assert: var owner name equals: 'new_uo'.
	self assert: var owner owner name equals: 'majorObjectTest'.

]
