Class {
	#name : #PWBSRUImporterVisitorsTest,
	#superclass : #PWBAbstractImporterVisitorsTest,
	#category : #'PowerBuilder-Parser-Tests-Visitors'
}

{ #category : #running }
PWBSRUImporterVisitorsTest >> fileExtension [ 
	^'sru'
]

{ #category : #running }
PWBSRUImporterVisitorsTest >> setUp [
	super setUp.

	self flag: 'TODO: deal with libraries'.
	"library := FamixPWBLibrary new
		name: 'TestLib';
		mooseModel: model;
		yourself."

	model ensureIRForFamixClass: FamixPWBUserObject named: 'test_uo' owner: nil.
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testAccessChainOfIdentifierDefinedInForwardIsWellSet [
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
PWBSRUImporterVisitorsTest >> testAccessInstanceVariable [
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
PWBSRUImporterVisitorsTest >> testAccessInstanceVariableSourceText [
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
PWBSRUImporterVisitorsTest >> testAccessReadOrWriteIsConsistent [
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
PWBSRUImporterVisitorsTest >> testEventInvocation [
	| events fct |
	self importCode:
'private function integer eventTestingFunction()
  this.triggerEvent("evt_trigger", 0, "")
  this.postEvent("evt_post", 0, "")
  TriggerEvent( this, "destructor" )
end function
'.

	fct := (model getAllIR: PWBIRFunction named: 'eventTestingFunction')
				anyOne.

	events := model getAllFamixType: FamixPWBEvent.
	self assert: events size equals: 2.

	events do: [ :evt |
		self assert: (fct dependencies includes: evt)
	]

]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testFunction [
	| fct |
	self importCode:
'global variables
  long gl_long1;
end variables

shared variables
  test_uo uo_var;
end variables

type variables
  long il_long1;
end variables

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
'private function integer aFunction ();
  anotherFunction(2, "blah")
  return -1
end function

private function long anotherFunction (long aLong, uo_datawindow dw_param); 
  AFUNCTION(aLong)
  return il_long1[1]
end function
'.

	caller := (model getAllIR: PWBIRFunction named: 'aFunction')
				anyOne.
	callee := (model getAllIR: PWBIRFunction named: 'anotherFunction')
				anyOne.

	self assert: (caller dependencies includes: callee)
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testFunctionInvocationMixedCase [
	| caller callee |
	self importCode:
'private function integer aFunction ();
  anotherFunction(2, "blah")
  return -1
end function

private function long anotherFunction (long aLong, uo_datawindow dw_param); 
  AFUNCTION(aLong)
  return il_long1[1]
end function
'.

	caller := (model getAllIR: PWBIRFunction named: 'aFunction')
				anyOne.
	callee := (model getAllIR: PWBIRFunction named: 'anotherFunction')
				anyOne.

	caller := (model getAllIR: PWBIRFunction named: 'anotherFunction')
				anyOne.
	callee := (model getAllIR: PWBIRFunction named: 'aFunction')
				anyOne.

	self assert: (caller dependencies includes: callee)
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
	self importCode:
'global variables
  long gl_long1;
  global String gs_string1;
end variables

shared variables
  test_uo uo_var;
end variables

type variables
  long il_long1;
end variables

private function integer aFunction ();
  long local_variable
  return -1
end function
'.

	self
		assertCollection: ((model getAllFamixType: FamixPWBGlobalVariable) collect: #name)
		hasSameElements: {'gl_long1' . 'gs_string1'}
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testInstanceVariables [
	self importCode:
'global variables
  long gl_long1;
end variables

shared variables
  test_uo uo_var;
end variables

type variables
  long il_long1;
end variables

private function integer aFunction ();
  long local_variable
  return -1
end function
'.

	self
		assertCollection: ((model getAllFamixType: FamixPWBInstanceVariable) collect: #name)
		hasSameElements: { 'il_long1' }
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testLocalVariables [
	| locals fct |
	self importCode:
'global variables
  long gl_long1;
end variables

shared variables
  test_uo uo_var;
end variables

type variables
  long il_long1;
end variables

private function integer aFunction ();
  long lL_return
  return -1
end function
'.

	locals := model getAllFamixType: FamixPWBLocalVariable.
	fct := (model getAllIR: PWBIRFunction named: 'aFunction')
		anyOne.
	
	self assert: locals size equals: 1.
	self assert: locals anyOne name equals: 'lL_return'.
	self assert: locals anyOne owner equals: fct.

]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testParameter [
	self importCode:
'global variables
  long gl_long1;
end variables

shared variables
  test_uo uo_var;
end variables

type variables
  long il_long1;
end variables

private function integer aFunction ();
  long lL_return
  return -1
end function

private function long anotherFunction (long aLong, uo_datawindow dw_param); 
  return 5
end function
'.

	self
		assertCollection: ((model getAllFamixType: FamixPWBParameter) collect: #name)
		hasSameElements: {'aLong' . 'dw_param'}
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testParameterType [
	| param |
	self importCode:
'global variables
  long gl_long1;
end variables

shared variables
  test_uo uo_var;
end variables

type variables
  long il_long1;
end variables

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
		hasSameElements: PWBIRType mappingFamixClasses
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testResolveUserObjectType [
	| uoTests|
	uoTests := model getAllEntities select: [ : e | e name = 'test_uo' ].
	self assert: uoTests size equals: 1.
	self
		assertCollection: uoTests anyOne expectedFamixKinds
		hasSameElements: { FamixPWBUserObject }
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testReturnFunctionInvocationValueIsCorrect [
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

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testSharedVariables [
	| shared |
	self importCode:
'global variables
  long gl_long1;
end variables

shared variables
  test_uo uo_var;
end variables

type variables
  long il_long1;
end variables

private function integer aFunction ();
  long lL_return
  return -1
end function
'.

	shared := model getAllFamixType: FamixPWBSharedVariable.

	self assert: shared size equals: 1.
	self assert: shared anyOne name equals: 'uo_var'.
	self
		assert: shared anyOne owner
		equals: ((model getAllIR: PWBIRType named: 'testFile')
			anyOne)

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
		equals:
			'private function integer eventTestingFunction()
  this.triggerEvent("evt_trigger", 0, "")
  this.postEvent("evt_post", 0, "")
  TriggerEvent( this, "destructor" )
end function'
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testVariableAccesses [
	| accesses fct |
	self importCode:
'type variables
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

	accesses := fct dependencies select: [ :ir | ir class = PWBIRValueHolder ].
	self assert: accesses size equals: 4.
	self
		assertCollection: (accesses collect: #name)
		hasSameElements: {'aLong' . 'il_long1' . 'll_pos'}
]

{ #category : #tests }
PWBSRUImporterVisitorsTest >> testVariableAccessesMixedCase [
	| accesses fct |
	self importCode:
'private function integer aFunction ();
  long lL_return
  var.isNull()
  return LL_RETURN

end function
'.

	fct := (model getAllIR: PWBIRFunction named: 'aFunction')
				anyOne.

	accesses := fct dependencies select: [ :ir | ir class = PWBIRValueHolder ].
	self assert: accesses size equals: 2.
	self
		assertCollection: (accesses collect: #name)
		hasSameElements: {'lL_return' . 'var'}
]
