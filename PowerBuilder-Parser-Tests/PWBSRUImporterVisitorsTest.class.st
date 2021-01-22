Class {
	#name : #PWBSRUImporterVisitorsTest,
	#superclass : #PWBAbstractImporterVisitorsTest,
	#category : #'PowerBuilder-Parser-Tests-Visitors'
}

{ #category : #running }
PWBSRUImporterVisitorsTest >> fileExtension [ 
	^'sru'
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testEventInvocation [
	| events fct |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

private function integer eventTestingFunction()
  this.triggerEvent("evt_trigger", 0, "")
  this.postEvent("evt_post", 0, "")
  TriggerEvent( this, "destructor" )
end function
'.

	fct := (model getAllIR: PWBIRFunction named: 'eventTestingFunction')
				anyOne.

	events := model getAllFamixType: FamixPWBEvent.
	self assert: events size equals: 2.

	self assert: (fct dependencies allSatisfy: [:dep | dep class = PWBIRDependencyInvocation]).

	events do: [ :evt |
		self assert: (fct dependencies anySatisfy: [:dep | dep candidates = { evt } ])
	]

]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testFunction [
	| fct |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

private function integer aFunction ();
  var.isNull()
  anotherFunction(2, "blah")
  return -1
end function

private function long anotherFunction (long aLong, uo_datawindow dw_param);  
  AFUNCTION(aLong)
  return trim("bla")
end function

private function integer eventTestingFunction()
  this.triggerEvent("evt_trigger", 0, "")
  this.postEvent("evt_post", 0, "")
  TriggerEvent( this, "destructor" )
end function
'.

	self assert: (model getAllFamixType: FamixPWBFunction) size equals: 5.
	self
		assertCollection: ((model getAllFamixType: FamixPWBFunction) collect: #name)
		hasSameElements: { 'aFunction' . 'isNull' . 'anotherFunction' . 'trim' . 'eventTestingFunction' }.

	fct := (model getAllIR: PWBIRFunction named: 'aFunction')
		anyOne.
	self assert: fct declaredType name equals: 'integer'.

	fct := (model getAllIR: PWBIRFunction named: 'anotherFunction')
		anyOne.
	self assert: fct declaredType name equals: 'long'.
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testFunctionInvocationCorrectCase [
	| caller callee |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

private function integer aFunction ();
  anotherFunction(2, "blah")
  return -1
end function

private function long anotherFunction (long aLong, uo_datawindow dw_param); 
  AFUNCTION(1)
  return 1
end function
'.

	caller := (model getAllIR: PWBIRFunction named: 'aFunction')
				anyOne.
	callee := (model getAllIR: PWBIRFunction named: 'anotherFunction')
				anyOne.

	self assert: caller dependencies size equals: 1.
	self assert: caller dependencies anyOne class equals: PWBIRDependencyInvocation.
	self assert: caller dependencies anyOne candidates size equals: 1.
	self assert: caller dependencies anyOne candidates anyOne equals: callee.
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testFunctionInvocationMixedCase [
	| caller callee |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

private function integer aFunction ();
  anotherFunction(2, "blah")
  return -1
end function

private function long anotherFunction (long aLong, uo_datawindow dw_param); 
  AFUNCTION(1)
  return 1
end function
'.

	caller := (model getAllIR: PWBIRFunction named: 'anotherFunction')
				anyOne.
	callee := (model getAllIR: PWBIRFunction named: 'aFunction')
				anyOne.

	self assert: caller dependencies size equals: 1.
	self assert: caller dependencies anyOne class equals: PWBIRDependencyInvocation.
	self assert: caller dependencies anyOne candidates size equals: 1.
	self assert: caller dependencies anyOne candidates anyOne equals: callee.
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testFunctionInvocationSourceText [
	| invocation1 invocation2 |
	
	self flag: #TODOSourceAnchor.
	self skip.

	invocation1 := ((model getAllFamixType: FamixPWBFunction)
		detect: [ :function | function name = 'anotherFunction' ]
		ifNone: [self fail])
		incomingInvocations anyOne.
	invocation2 := model allInvocations
		detect: [ :inv | inv candidates anyOne name = 'isNull' ]
		ifNone: [self fail].
	self
		assert: (self sourceText: invocation1)
		equals: 'anotherFunction(2, "blah")'.
	self assert: (self sourceText: invocation2) equals: '.isNull()'
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testGlobalVariables [
	| majorUO |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

global variables
  long gl_long;
  global String gs_string;
end variables
'.

	self assert: (model getAllIR: PWBIRValueHolder) size equals: 2.

	majorUO := (model getAllIR: PWBIRType named: 'majorObjectTest')
		anyOne.
	(model getAllIR: PWBIRValueHolder)
		detect: [ :var | var name = 'gl_long' ]
		ifOne: [ :var |
			self assertCollection: var expectedFamixKinds equals: { FamixPWBGlobalVariable }.
			self assert: var owner equals: majorUO
		]
		ifNone: [ self fail ].

	(model getAllIR: PWBIRValueHolder)
		detect: [ :var | var name = 'gs_string' ]
		ifOne: [ :var |
			self assertCollection: var expectedFamixKinds equals: { FamixPWBGlobalVariable }.
			self assert: var owner equals: majorUO
		]
		ifNone: [ self fail ].

]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testImplicitVariable [
	| local |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

private function integer aFunction ();
  return this
end function
'.

	self assert: (model getAllIR: PWBIRValueHolder) size equals: 1.
	local := (model getAllIR: PWBIRValueHolder)
		anyOne.
	self assert: local name equals: 'this'.
	self assert: local declaredType name equals: 'majorObjectTest'.

]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testInstanceVariables [
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

type variables
  long il_long;
end variables
'.

	self assert: (model getAllIR: PWBIRValueHolder) size equals: 1.

	(model getAllIR: PWBIRValueHolder)
		detect: [ :var | var name = 'il_long' ]
		ifOne: [ :var |
			self assertCollection: var expectedFamixKinds equals: { FamixPWBInstanceVariable }.
			self
				assert: var owner
				equals: ((model getAllIR: PWBIRType named: 'majorObjectTest') anyOne)
		]
		ifNone: [ self fail ].

]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testLocalVariables [
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

private function integer aFunction ();
  long lL_return
  return -1
end function
'.

	self assert: (model getAllIR: PWBIRValueHolder) size equals: 1.

	(model getAllIR: PWBIRValueHolder)
		detect: [ :var | var name = 'lL_return' ]
		ifOne: [ :var |
			self assertCollection: var expectedFamixKinds equals: { FamixPWBLocalVariable }.
			self
				assert: var owner
				equals: ((model getAllIR: PWBIRFunction) anyOne)
		]
		ifNone: [ self fail ].

]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testParameter [
	| fct |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

private function long anotherFunction (long aLong, uo_datawindow dw_param); 
  return 5
end function
'.

	self assert: (model getAllIR: PWBIRValueHolder) size equals: 2.

	fct := (model getAllIR: PWBIRFunction) anyOne.
	(model getAllIR: PWBIRValueHolder)
		detect: [ :var | var name = 'aLong' ]
		ifOne: [ :var |
			self assertCollection: var expectedFamixKinds equals: { FamixPWBParameter }.
			self assert: var owner equals: fct
		]
		ifNone: [ self fail ].

	(model getAllIR: PWBIRValueHolder)
		detect: [ :var | var name = 'dw_param' ]
		ifOne: [ :var |
			self assertCollection: var expectedFamixKinds equals: { FamixPWBParameter }.
			self assert: var owner equals: fct
		]
		ifNone: [ self fail ].

]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testParameterType [
	| param |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

private function integer aFunction ();
  long lL_return
  return -1
end function

private function long anotherFunction (long aLong, uo_datawindow dw_param); 
  return 5
end function
'.

	param := (model getAllFamixType: FamixPWBParameter)
		detect: [ :each | each name = 'dw_param' ]
		ifNone: [self fail].
	self
		assertCollection: param declaredType expectedFamixKinds
		hasSameElements: PWBIRType defaultFamixClasses
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testResolveUserObjectType [
	| uoTests|
	uoTests := model getAllEntities select: [ : e | e name = 'majorObjectTest' ].
	self assert: uoTests size equals: 1.
	self
		assertCollection: uoTests anyOne expectedFamixKinds
		hasSameElements: { FamixPWBUserObject }
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testSharedVariables [
	| shared |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

shared variables
  test_uo uo_var;
end variables
'.

	self assert: (model getAllIR: PWBIRValueHolder) size equals: 1.

	(model getAllIR: PWBIRValueHolder)
		detect: [ :var | var name = 'uo_var' ]
		ifOne: [ :var |
			self assertCollection: var expectedFamixKinds equals: { FamixPWBSharedVariable }.
			self
				assert: var owner
				equals: ((model getAllIR: PWBIRType named: 'majorObjectTest')
					anyOne)
		]
		ifNone: [ self fail ].
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testSourceTestSettings [
	| eventTestingFunction |

	self flag: #TODOSourceAnchor.
	self skip.

	self importCode:
'private function integer eventTestingFunction()
  this.triggerEvent("evt_trigger", 0, "")
  this.postEvent("evt_post", 0, "")
  TriggerEvent( this, "destructor" )
end function
'.

	eventTestingFunction := (model getAllFamixType: FamixPWBFunction)
		detect: [ :function | function name = 'eventTestingFunction' ]
		ifNone: [self fail].
	self
		assert: (self sourceText: eventTestingFunction)
		equals: sourceExample.
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testThisFunction [
	| fct |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

private function integer aFunction ();
  this.anotherFunction(2)
end function
'.

	fct := (model getAllIR: PWBIRFunction named: 'aFunction')
		anyOne dependencies
			detect: [ :dep | dep class = PWBIRDependencyInvocation]
			ifOne: [ :dep | dep candidates anyOne ]
			ifNone: [ self fail ].

	self assert: fct isNotNil.
	self assert: fct name equals: 'anotherFunction'.

]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testVariableAccesses [
	| accesses fct |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

type variables
  long il_long1;
end variables

private function long anotherFunction (long aLong, uo_datawindow dw_param); 
  AFUNCTION(aLong)
  this.il_long1 = 5
  return ll_pos - 1 
  return il_long1[1]
end function
'.

	fct := (model getAllIR: PWBIRFunction named: 'anotherFunction')
				anyOne.

	accesses := fct dependencies select: [ :ir | ir class = PWBIRDependencyAccess ].
	self assert: accesses size equals: 5.
	self assert: ((accesses select: [ :dep | dep irEntity name = 'aLong']) size) equals: 1.
	self assert: ((accesses select: [ :dep | dep irEntity name = 'this']) size) equals: 1.
	self assert: ((accesses select: [ :dep | dep irEntity name = 'il_long1']) size) equals: 2.
	self assert: ((accesses select: [ :dep | dep irEntity name = 'll_pos']) size) equals: 1.

]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testVariableAccessesMixedCase [
	| accesses fct |
	self importCode:
'forward
  global type majorObjectTest from userobject
  end type
end forward

private function integer aFunction ();
  long lL_return
  var.isNull()
  return LL_RETURN

end function
'.

	fct := (model getAllIR: PWBIRFunction named: 'aFunction')
				anyOne.

	accesses := fct dependencies select: [ :dep | dep class = PWBIRDependencyAccess ].
	self assert: accesses size equals: 2.
	self assert: (accesses anySatisfy: [ :dep | dep irEntity name = 'lL_return']).
	self assert: (accesses anySatisfy: [ :dep | dep irEntity name = 'var']).
]
